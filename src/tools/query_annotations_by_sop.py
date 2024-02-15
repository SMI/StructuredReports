#!/usr/bin/env python3
# Read the annotations from the database for every filename
# which is listed in the input file, and see if any of our
# concepts of concern are in that set of annotations.
#
# Inputs:
#    Exemplar2_concepts_221206.csv
#      contains ,cui,tui,tuigroup,cuilabel
#      e.g. 1,C0004994,T191,DISO,benign tumor of mandible
#    Dementia-SOPInstanceUIDs
#    Non-Dementia-SOPInstanceUIDs
#      contains paths to actual DICOM files
#      (anonymised ones after extraction)
#      e.g. Dementia_StudyInstanceUID/1.2.826.../1.2.840.../SRc.1.2.840...-an.dcm
#      path not important, only uses filename to infer SOPInstanceUID.
#    
# Read each file that contains filenames,
#   For each filename, query the DB for its annotations,
#     see if any annotations are in the list,
#     or in the extended (narrower) list
import csv
import json
import os
import re
import sys

import psycopg2
sys.path.append('/opt/semehr/CogStack-SemEHR/RESTful_service')
from umls import UMLSmap

# Filenames on command line, or as below:
filename_list = ['Dementia-SOPInstanceUIDs', 'Non-Dementia-SOPInstanceUIDs']
if len(sys.argv)>1:
    filename_list = sys.argv[1:]

# Read the list of concepts of interest
cui_list = []
fd = open('Exemplar2_concepts_221206.csv')
reader = csv.DictReader(fd)
for row in reader:
    cui_list.append(row['cui'])
cui_set = set(cui_list)
print('number of primary concepts %d' % len(cui_set))

# Connect to postgres for reading annotations
pgcon = psycopg2.connect("dbname=semehr host=localhost user=semehr password=semehr")
pgcur = pgcon.cursor()

# Import the UMLS mapper
with open('/opt/semehr/CogStack-SemEHR/RESTful_service/conf/settings.json') as fd:
    pgconf = json.loads(fd.read())
mapper = UMLSmap(settings = pgconf)

# For every concept of interest, find all the 'narrower' CUIs
cui_set2 = set()
for cui in cui_set:
    cui_set2.update( mapper.cui_narrower(cui))
print('number of narrow concepts %d' % len(cui_set2))

# For writing log file
outfd = open('annotations.csv', 'w', newline='')
outcsv = csv.DictWriter(outfd, fieldnames=['SOPInstanceUID','filename','concepts','narrower'], lineterminator='\n')
outcsv.writeheader()

num_bad = 0
num_empty = 0
num_int1 = 0
num_int2 = 0

int1_counts = dict()
int2_counts = dict()

for filename in filename_list:
    print('Reading list of files from %s' % filename)
    fd = open(filename)
    reader = csv.reader(fd)
    for row in reader:
        # infer the SOPInstanceUID from the DICOM filename
        sop = re.sub('^.*SR[ce]\.', '', row[0].strip()).replace('-an.dcm', '')
        # Find annotation by looking up SOPInstanceUID
        pgcur.execute("select semehr_results->'annotations' from semehr.semehr_results where semehr_results.SOPInstanceUID = '%s'" % sop)
        rc = pgcur.fetchall()
        if len(rc) != 1:
            print('ERROR1 %s not in database, len(rc)=%s' % (sop, len(rc)))
            outcsv.writerow({'SOPInstanceUID':sop, 'filename':row[0].strip(), 'concepts':'','narrower':''})
            num_bad += 1
            continue
        if len(rc[0]) != 1: print('ERROR2 %s has len(rc[0])=%s' % (sop, len(rc[0])))
        ann = rc[0][0]
        anns = [xx['cui'] for xx in ann]
        intersection1 = cui_set.intersection(anns)
        intersection2 = cui_set2.intersection(anns)
        if intersection1:
            print('%s contains some primary concepts' % sop)
            num_int1 += 1
        if intersection2:
            print('%s contains some child/narrower concepts' % sop)
            num_int2 += 1
        if not intersection1 and not intersection2:
            print('%s has no concepts of interest' % sop)
            num_empty += 1
        for inters in intersection1:
            print('  intersection1: %s (%s)' % (inters, mapper.cui_to_label(inters)))
            int1_counts[inters] = int1_counts.get(inters, 0) + 1
        for inters in intersection2:
            print('  intersection2: %s (%s)' % (inters, mapper.cui_to_label(inters)))
            int2_counts[inters] = int2_counts.get(inters, 0) + 1
        outcsv.writerow({'SOPInstanceUID':sop, 'filename':row[0].strip(), 'concepts':len(intersection1), 'narrower':len(intersection2)})

outfd.close()

print("\nSummary")
print("SRs not in database: %d" % num_bad)
print("SRs with no concepts of interest: %d" % num_empty)
print("SRs with at least one primary concept of interest: %d" % num_int1)
print("SRs with at least one narrower concept of interest: %d" % num_int2)

min_count=2
print( "Primary concept occurrences:")
print( "      <fewer than %d occurrences omitted>" % min_count)
print(
    "\n".join([
        "%4d = %s (%s)"%(int1_counts[k],k,mapper.cui_to_label(k))
        for k in sorted(int1_counts, key=int1_counts.get) if int1_counts[k]>=min_count
    ]),
)
print( "Narrower concept occurrences:")
print( "      <fewer than %d occurrences omitted>" % min_count)
print(
    "\n".join([
        "%4d = %s (%s)"%(int2_counts[k],k,mapper.cui_to_label(k))
        for k in sorted(int2_counts, key=int2_counts.get) if int2_counts[k]>=min_count
    ]),
)
