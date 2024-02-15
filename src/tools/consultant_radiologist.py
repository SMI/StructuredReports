#!/usr/bin/env python3
# Look for "Consultant Radiologist" in SRs
#  and compare with what's in the Observer tags
#  and check if COMPLETED and VERIFIED
#  (and also look for Chest X-Ray SRs if possible)
# Run with:
# PYTHONPATH=~/h/src/github/SmiServices/src/common/Smi_Common_Python ./consultant_radiologist.py 
import json
import re
import sys
from tempfile import TemporaryFile

import SmiServices.StructuredReport as SR
from bson.json_util import dumps
from pymongo import MongoClient
from SmiServices import Dicom
from SmiServices import DicomText
from SmiServices import StructuredReport

num_random_docs = 1000
num_context_chars = 40

mongoHost = 'nsh-smi02'
mongoUser = 'reader'
mongoPass = 'XXXXX'
mongoDatabaseName = 'dicom'
mongoCollectionName = 'image_SR'

mongoConnection = MongoClient(host=mongoHost, username=mongoUser, password=mongoPass, authSource='admin')
mongoDb = mongoConnection[mongoDatabaseName]
mongoCollection = mongoDb[mongoCollectionName]
#cursor = mongoCollection.find_one( {  } )
cursor = mongoCollection.aggregate([{'$sample': {'size': num_random_docs }}])
jsonstr = dumps(cursor)
jsonarray = json.loads(jsonstr)
for jsondict in jsonarray:
    filename = jsondict['header']['DicomFilePath']
    sopclass = jsondict['SOPClassUID']
    sopinst = jsondict['SOPInstanceUID']
    modalities = jsondict['ModalitiesInStudy'].split('\\')
    print('Loading %s (class %s, modalities %s) from %s' % (sopinst, sopclass, modalities, filename))
    # Ignore X-Ray Radiation Dose SR
    # See https://dicom.nema.org/dicom/2013/output/chtml/part04/sect_B.5.html
    if sopclass == '1.2.840.10008.5.1.4.1.1.88.67':
        print('IGNORE X-Ray Dose Report')
        continue
    if not 'CR' in modalities and not 'DX' in modalities and not 'XA' in modalities:
        print('IGNORE modalities %s' % modalities)
        continue
    print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ %s' % sopclass)
    print('Instance: %s' % sopinst)
    print('Modalities In Study: %s' % modalities)
    print('Completion Flag: %s' % jsondict.get('CompletionFlag', 'n/a'))
    print('Completion Flag Description: %s' % jsondict.get('CompletionFlagDescription', 'n/a'))
    print('Verification Flag: %s' % jsondict.get('VerificationFlag', 'n/a'))
    print('Verifying Observer Sequence: %s' % jsondict.get('VerifyingObserverSequence', 'n/a'))
    print('Verifying Observer Name: %s' % jsondict.get('VerifyingObserverName', 'n/a'))
    print('Verifying Observer Identification Code Sequence: %s' % jsondict.get('VerifyingObserverIdentificationCodeSequence', 'n/a'))
    print('Verifying Organization: %s' % jsondict.get('VerifyingOrganization', 'n/a'))
    print('Study Description: %s' % jsondict.get('StudyDescription', 'n/a'))
    print('Series Description: %s' % jsondict.get('SeriesDescription', 'n/a'))
    print('Body Part Examined: %s' % jsondict.get('BodyPartExamined', 'n/a'))
    print('Requested Procedure Description: %s' % jsondict.get('RequestedProcedureDescription', 'n/a'))
    print('Requested Procedure Code Sequence: %s' % jsondict.get('RequestedProcedureCodeSequence', 'n/a'))
    print('Performed Procedure Code Sequence: %s' % jsondict.get('PerformedProcedureCodeSequence', 'n/a'))
    sr = SR.StructuredReport()
    with TemporaryFile(mode='w+', encoding='utf-8') as fd:
        sr.SR_parse(jsondict, 'document_name', fd) # could narrow down to TextValue or ContentSequence
        fd.seek(0)
        content = fd.read()
        for match in re.finditer(r'\bcons.*rad', content, re.I | re.M):
            consrad = content[max(0,match.start()-num_context_chars) : min(match.end()+num_context_chars,len(content))].replace('\n',' ').replace('\r',' ')
            if len(consrad)-(2*num_context_chars) > len('Consultant Radiologist    '):
                print('IGNORE %s' % consrad)
                continue
            print('  FOUND ... %s ...' % consrad)




# See http://dicomlookup.com/lookup.asp?sw=Ttable&q=C.17-2
# (0040,A491)   Completion Flag, PARTIAL or COMPLETE
# (0040,A492)   Completion Flag Description
# (0040,A493)   Verification Flag, UNVERIFIED or VERIFIED by Verifying Observer Name
# (0040,A073)   Verifying Observer Sequence, (required if "VERIFIED") The person or persons authorized to verify documents of this type and accept responsibility for the content of this document.
# (0040,A075)   >Verifying Observer Name, The person authorized by the Verifying Organization (0040,A027) to verify documents of this type and who accepts responsibility for the content of this document
# (0040,A088)   >Verifying Observer Identification Code Sequence, Coded identifier of Verifying Observer. Zero or one Items shall be permitted in this sequence.
# (0040,A027)   >Verifying Organization, Organization to which the Verifying Observer Name (0040,A075) is accountable for this document in the current interpretation procedure.
# (0040,A030)   >Verification DateTime
# See also these which might help to identify the body part?
# (0032,1060)   >Requested Procedure Description, Institution-generated administrative description or classification of Requested Procedure.
# (0032,1064)   >Requested Procedure Code Sequence, A sequence that conveys the requested procedure. Zero or one Item may be included in this sequence.
# (0040,A372)   Performed Procedure Code Sequence
