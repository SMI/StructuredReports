#!/usr/bin/env python3
# Extract the CSV file mtsamples_ihi.csv 
#  Write each row into a separate file in the mtsamples_ihi_docs directory.
#  Also writes fake metadata files. These would normally be written by
#  CTP_DicomToText as it extracts the data from MongoDB but to simulate this
#  we can create them now instead.
import csv
import errno
import json
import os
import sys

sample_csv_dir  = os.path.join(os.path.abspath(os.path.dirname(__file__)), '../data')
sample_csv_file = os.path.join(sample_csv_dir, 'mtsamples_ihi.csv')  # input CSV file
sample_doc_dir  = os.path.join(sample_csv_dir, 'mtsamples_ihi_docs') # extracted into files in this directory
sample_meta_dir  = os.path.join(sample_csv_dir, 'mtsamples_ihi_meta') # fake metadata files in this directory


def mkdir_p(path, mode):
  try:
    os.makedirs(path, mode)
  except OSError as exc: # Python >2.5
    if exc.errno == errno.EEXIST and os.path.isdir(path):
      pass
    else:
      raise


# ensure directory exists
mkdir_p(sample_doc_dir, 0o750)
mkdir_p(sample_meta_dir, 0o750)

# read CSV file and extract each row into a separate file
csv_fp = open(sample_csv_file)
reader = csv.DictReader(csv_fp)
doc_num = 1
for row in reader:
    with open(os.path.join(sample_doc_dir, 'doc%04d.txt' % doc_num), 'w') as doc_fp:
        print(row['transcription'], file=doc_fp)
    with open(os.path.join(sample_meta_dir, 'doc%04d.json' % doc_num), 'w') as meta_fp:
        metadict = {   "SOPClassUID": '1.2.3.4.5',
            "SOPInstanceUID": 'doc%04d.txt' % doc_num,
            "StudyInstanceUID": '1.2.34.567.%04d' % doc_num,
            "SeriesInstanceUID": '1.2.34.5678.%04d' % doc_num,
            "ContentDate": '20201005',
            "ModalitiesInStudy": 'CT\\SR',
            "PatientID": '1234567890',
        }
        print(json.dumps(metadict), file=meta_fp)
    doc_num += 1
csv_fp.close()
