#!/usr/bin/env python3
# Create a DICOM Structured Report by reading a template in JSON format
# amd filling in the tags with the given parameters or random values.
# To do:
# Should have options for specifying name, output path, etc.

import pydicom
from pydicom.dataset import FileMetaDataset
import argparse
import json
import random
import os
import sys

in_json = 'sample_SR.json'
out_dcm = 'sample_SR.dcm'
out_dir = os.curdir         # current directory
in_text_dir = '../data/mtsamples_ihi_docs/'

forenames = ['Olivia', 'Emily', 'Isla', 'Freya', 'Ella', 'Amelia', 'Ava', 'Sophie', 'Grace', 'Millie']
surnames = [ 'Smith', 'Brown', 'Wilson', 'Thomson', 'Robertson', 'Campbell', 'Stewart', 'Anderson', 'MacDonald', 'Scott']
streets = [ 'Acacia', 'Banavie', 'Cross', 'Dunstan', 'Elcho' ]
streettypes = [ 'Avenue', 'Lane', 'Street', 'Drive' ]
districts = [ 'Ayr', 'Broughty Ferry', 'Castleton', 'Dunbar', 'Edinburgh', 'Forfar' ]
postcodes = [ 'AB', 'BA', 'CH', 'DD', 'EH', 'KY', 'G' ]

patient_forename = random.choice(forenames)
patient_surname =  random.choice(surnames)
doctor_forename = random.choice(forenames)
doctor_surname =  random.choice(surnames)

def random_text():
	random_filename = os.path.join(in_text_dir, 'doc%04d.txt' % random.randint(1,4999))
	with open(random_filename) as fd:
		return fd.read()

def random_date():
	return '%02d/%02d/%04d' % (random.randint(1,28), random.randint(1,12), random.randint(2010,2017))

def random_postcode():
	letters = ['A','B','E','H','M','N','P','R','V','Y']
	return '%s%d %d%s%s' % (random.choice(postcodes), random.randint(1,55),
		random.randint(1,9), random.choice(letters), random.choice(letters))

def random_address():
	return '%d %s %s, %s, %s' % (random.randint(1,123),
		random.choice(streets), random.choice(streettypes),
		random.choice(districts), random_postcode())

fake_address = 'Discharged to %s' % random_address()
fake_reporter = '%s\nVerified on %s by Dr %s %s, Consultant' % (fake_address, random_date(), doctor_forename, doctor_surname)

parser = argparse.ArgumentParser(description='DICOM faker')
parser.add_argument('-v', '--verbose', action="store_true", help='Verbose')
parser.add_argument('-o', '--output', action="store", help="Output DICOM filename")
parser.add_argument('-j', '--json', action="store", help="Input JSON version of DICOM")
parser.add_argument('-t', '--text', action="store", help="Filename containing text body of report")
parser.add_argument('--dirs', action="store_true", help="Create output directories based on date")
parser.add_argument('--dirs0', action="store_true", help="Create output directories based on date with leading zeros")
parser.add_argument('--sopid', action="store", help='SOPInstanceUID')
parser.add_argument('--studyid', action="store", help='StudyInstanceUID')
parser.add_argument('--seriesid', action="store", help='SeriesInstanceUID')
parser.add_argument('--patientid', action="store", help='PatientID')
parser.add_argument('--contentdate', action="store", help='ContentDate, SeriesDate and StudyDate, YYYY-MM-DD')
parser.add_argument('--modalities', action="store", help='Modalities (should include SR)')
#parser.add_argument('-', '--', action="store", help='')
args = parser.parse_args()
if args.json:
	in_json = args.json
if args.contentdate and args.dirs0:
	out_dir = os.sep.join(args.contentdate.split('-'))
	os.makedirs(out_dir, exist_ok = True)
if args.contentdate and args.dirs:
	out_dir = os.sep.join([str(int(s)) for s in args.contentdate.split('-')])
	os.makedirs(out_dir, exist_ok = True)
if args.output:
	out_dcm = os.path.join(out_dir, args.output)
if args.text:
	with open(args.text) as fd:
		in_text = fd.read()
else:
	in_text = random_text()

# Read the sample JSON file
with open(in_json) as fd:
    json_dict = json.load(fd)

# Make changes whilst we have a Python dictionary
# if we don't know how to change it using pydicom

#  ContentSequence|Value0|ConceptNameCodeSequence|Value0|CodeMeaning|Value
#  ContentSequence|Value0|PersonName|Value|Alphabetic
json_dict['0040A730']['Value'][0]['0040A043']['Value'][0]['00080104']['Value'][0] = 'Observer'
json_dict['0040A730']['Value'][0]['0040A123']['Value'][0]['Alphabetic'] = '%s^%s^^^Dr.' % (doctor_surname, doctor_forename)

# ContentSequence|Value1|ConceptNameCodeSequence|Value0|CodeMeaning|Value
# ContentSequence|Value1|TextValue|Value0
json_dict['0040A730']['Value'][1]['0040A043']['Value'][0]['00080104']['Value'][0] = 'Report'
json_dict['0040A730']['Value'][1]['0040A160']['Value'][0] = in_text

# ContentSequence|Value2|ConceptNameCodeSequence|Value0|CodeMeaning|Value
# ContentSequence|Value2|TextValue|Value0
json_dict['0040A730']['Value'][2]['0040A043']['Value'][0]['00080104']['Value'][0] = 'Reporter'
json_dict['0040A730']['Value'][2]['0040A160']['Value'][0] = fake_reporter

# Convert from Python dictionary into a DICOM dataset
dataset = pydicom.dataset.Dataset.from_json(json_dict)

# Set DICOM tags
dataset.PatientName = '%s^%s' % (patient_surname, patient_forename)
dataset.ReferringPhysicianName = '%s^%s^^^Dr.' % (doctor_surname, doctor_forename)

if args.sopid:
	dataset.SOPInstanceUID = args.sopid
if args.studyid:
	dataset.SOPInstanceUID = args.studyid
if args.seriesid:
	dataset.SOPInstanceUID = args.seriesid
if args.patientid:
	dataset.PatientID = args.patientid
if args.contentdate:
	dataset.ContentDate = args.contentdate.replace('-','')
	dataset.StudyDate = args.contentdate.replace('-','')
	dataset.SeriesDate = args.contentdate.replace('-','')
if args.patientid:
	dataset.ModalitiesInStudy = args.modalities

# DICOM file header
dataset.file_meta = FileMetaDataset()
dataset.file_meta.TransferSyntaxUID = '1.2.840.10008.1.2.1'

# Write new DICOM file (original=False so it creates a proper header)
dataset.save_as(out_dcm, write_like_original=False)
