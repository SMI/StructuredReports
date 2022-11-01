#!/usr/bin/env python3

# Rewrite the meta JSON files with content taken from a CSV file,
# so we can update the SOPInstanceUIDs etc

# The meta files contain:
# {"SOPClassUID": "1.2.3.4.5", "SOPInstanceUID": "doc0001.txt",
#  "StudyInstanceUID": "1.2.34.567.0001",
#  "SeriesInstanceUID": "1.2.34.5678.0001",
#  "ContentDate": "20201005", "ModalitiesInStudy": "CT\\SR",
#  "PatientID": "1234567890"}

import csv
import json
import os

csv_file = 'sample_SR.csv'
in_meta_dir = '../data/mtsamples_ihi_meta/'
verbose = True

with open(csv_file) as csv_fd:
    rdr = csv.DictReader(csv_fd)
    for row in rdr:
        meta_file = os.path.join(in_meta_dir, 'doc%04d.json' % int(row['id']))
        try:
            with open(meta_file) as json_fd:
                meta_dict = json.loads(json_fd.read())
        except Exception as e:
            print('ERROR: cannot read JSON file %s' % meta_file)
        if 'SOPInstanceUID' in row:
            meta_dict['SOPInstanceUID'] = row['SOPInstanceUID']
        if 'SeriesInstanceUID' in row:
            meta_dict['SeriesInstanceUID'] = row['SeriesInstanceUID']
        if 'StudyInstanceUID' in row:
            meta_dict['StudyInstanceUID'] = row['StudyInstanceUID']
        if 'PatientID' in row:
            meta_dict['PatientID'] = row['PatientID']
        if 'ContentDate' in row:
            meta_dict['ContentDate'] = row['ContentDate'].split()[0].replace('-','') # need YYYYMMDD format
        if 'ModalitiesInStudy' in row:
            meta_dict['ModalitiesInStudy'] = row['ModalitiesInStudy']
        # Write new meta file
        try:
            with open(meta_file, 'w') as json_fd:
                json.dump(meta_dict, json_fd)
        except:
            print('ERROR: cannot write JSON file %s' % meta_file)
        if verbose:
            print('Updated %s' % meta_file)
