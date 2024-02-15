#!/usr/bin/env python3
# Check that most of the documents in a zip file have been annotated.
# Report on the amount and quality.
# This assumes each zip file contains one whole day of annotations.
# Each zip file has been produced in a batch by year on a single hostname.
# Usage: zip_check.py *.zip
import os
import sys
import zipfile

# The reason for a document failing to extract is if it doesn't contain any text.
# eg. some types of SR don't have a ContentSequence field with any text in.
# However, if it does, then we would expect 100% success at anonymisation and
# annotation.

max_bad_percent=15

year_host = {
    '2010':'nsh-smi01',
    '2011':'nsh-smi04',
    '2012':'data3',
    '2013':'nsh-smi01',
    '2014':'data3',
    '2015':'nsh-smi01',
    '2016':'nsh-smi02',
    '2017':'nsh-smi04',
    '2018':'data3',
}
year_count={}  # total amount of good zips for a given year
year_docs={}   # total number of metadata files for a given year
year_failed={} # list of failed zips for a given year

for fn in sys.argv[1:]:
  year = os.path.basename(fn)[0:4] # first four chars of filename is year
  with zipfile.ZipFile(fn) as zz:
    meta = anon = annot = 0
    for nn in zz.namelist():
      if 'metadata/' in nn: meta += 1
      if 'anon/' in nn: anon += 1
      if 'semehr_results/' in nn: annot += 1
    missing = meta-annot
    percent_missing = 100.0*missing/meta
    msg = 'ERROR' if percent_missing > max_bad_percent else ''
    print(
        "%s extracted %d ->anon %d ->annot %d (%d missing %.1f%%) %s" % (
            fn,
            meta, anon, annot, missing, percent_missing, msg,
        ),
    )
    if percent_missing < max_bad_percent:
        year_count[year] = year_count.get(year,0)+1
        year_docs[year]  = year_docs.get(year,0) + meta
    else:
        year_failed[year] = year_failed.get(year,[])+([os.path.basename(fn)])

total_docs=0
for year in year_count:
    print('Total days complete in %s = %d (%d docs) [on %s] failed %d days' % (year, year_count[year], year_docs[year], year_host[year], len(year_failed.get(year,[]))))
    print('   bad: %s' % year_failed.get(year,''))
    total_docs += year_docs[year]
print('Total docs completed = %d (=%.1f%% of 30million)' % (total_docs, 100.0*total_docs/30000000))

print('To see errors use:')
print('   unzip -p .zip | egrep -v "CTP|Redacting" ')
print('To see the annotator log: grep Removing  append annotator.log')
