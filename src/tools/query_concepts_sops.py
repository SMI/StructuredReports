#!/usr/bin/env python3
# Perform a search to find ANY of the concepts in concepts.csv
# within any of the documents referenced in sopinstanceuids.csv
# i.e. looks for cui1 OR cui2 OR cui3 etc (the terms are OR, not AND).
# 
# Usage: concepts.csv sopinstanceuids.csv
# (applies equally well to studyinstanceuid or seriesinstanceuid)
# NB. specify the name of the column in the CSV file, or None if no header.
# e.g. Exemplar2_concepts_221206.csv  Dementia.csv > query.post
#
# The output is a POST query which you can submit like this:
# curl --insecure -X POST --no-progress-meter -H "Content-Type: application/json" \
#      --data-binary @query.post  "http://localhost:8080/api/search_anns/x/"
#
# It will look like this:
# {"passphrase":"aa06b3414d1ef012810cff0cfa1e459318ebcdf033af6044bdde7533566b2c23",
# "terms":[ {"q":["C0004994","C4750566","C99"]}],
# "filter":{"sopinstanceuid":["1.2.840.113704.7.1.2223360322.9052.1312473964.2821","dummy"]},
# "returnFields":["SOPInstanceUID"]}

import csv
import json
import sys

cui_filename = sys.argv[1]
sop_filename = sys.argv[2]

cui_column_name = "cui"
sop_column_name = None
sop_type = 'SOPInstanceUID' # can be SOPInstanceUID, SeriesInstanceUID or StudyInstanceUID
returnfields = ["SOPInstanceUID"]
passphrase = "aa06b3414d1ef012810cff0cfa1e459318ebcdf033af6044bdde7533566b2c23"


def opener(filename, columnname):
    """ Open a file for reading a single column,
    if the file is CSV with header give the column name,
    otherwise give None and a single-column no-header file is assumed.
    Returns a file descriptor and a column index, to be passed to reader().
    """
    fd = open(filename)
    csv_fd = csv.reader(fd)
    if columnname:
        header = next(csv_fd)
        col_index = header.index(columnname)
    else:
        col_index = 0
    return csv_fd,col_index

def reader(fd,col):
    """ Returns a quoted value from each row of the file.
    """
    for row in fd:
        yield '"'+row[col]+'"'


cui_fd, cui_col = opener(cui_filename, cui_column_name)
sop_fd, sop_col = opener(sop_filename, sop_column_name)

print('{"passphrase":"%s",' % passphrase)
print('"terms":[ {"q":[%s]}],' %
    ','.join(reader(cui_fd, cui_col)))
print('"filter":{"%s":[%s]},' % (sop_type.lower(),
    ','.join(reader(sop_fd, sop_col))))
print('"returnFields":%s}' % json.dumps(returnfields))
