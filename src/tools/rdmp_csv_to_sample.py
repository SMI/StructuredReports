#!/usr/bin/env python3
# Read the three files:  image.csv, series.csv, study.csv
# to determine which PatientID goes with which Series,
# and write a file "sample_SR.csv" containing:
#   id, SOPInstanceUID, SeriesInstanceUID, StudyInstanceUID, PatientID, ModalitiesInStudy
# to be used by the sample_SR.sh program.
# ==> image.csv <==
# StudyInstanceUID,SeriesInstanceUID,PatientID,SOPInstanceUID,BurnedInAnnotation,RelativeFileArchiveURI,MessageGuid,SliceLocation,SliceThickness,SpacingBetweenSlices,SpiralPitchFactor,KVP,ExposureTime,Exposure,ImageType,ManufacturerModelName,Manufacturer,SoftwareVersions,XRayTubeCurrent,PhotometricInterpretation,ContrastBolusRoute,ContrastBolusAgent,AcquisitionNumber,AcquisitionDate,AcquisitionTime,ImagePositionPatient,PixelSpacing,FieldOfViewDimensions,FieldOfViewDimensionsInFloat,DerivationDescription,LossyImageCompression,LossyImageCompressionMethod,LossyImageCompressionRatio,LossyImageCompressionRetired,ScanOptions,DicomFileSize
# ==> series.csv <==
# StudyInstanceUID,SeriesInstanceUID,Modality,InstitutionName,ProtocolName,ProcedureCodeSequence_CodeValue,PerformedProcedureStepDescription,SeriesDescription,SeriesDate,SeriesTime,BodyPartExamined,DeviceSerialNumber,SeriesNumber
# ==> study.csv <==
# PatientID,StudyInstanceUID,StudyDate,StudyTime,ModalitiesInStudy,StudyDescription,AccessionNumber,PatientSex,PatientAge,NumberOfStudyRelatedInstances,PatientBirthDate
import csv

image_list = []
series_list = []
study_list = []

with open('image.csv') as fd:
    rdr = csv.DictReader(fd)
    for row in rdr:
        image_list.append(row)
with open('series.csv') as fd:
    rdr = csv.DictReader(fd)
    for row in rdr:
        series_list.append(row)
with open('study.csv') as fd:
    rdr = csv.DictReader(fd)
    for row in rdr:
        study_list.append(row)

def body_part_lookup(bpe):
    """ Convert a BodyPartExamined tag into a dict which indicates
    which of the major body parts are referenced (can be multiple).
    Use not any(result.values()) to check if all are False.
    """
    # Some examples of BodyPartExamined are:
    #                (i.e. empty)
    # ABDOMEN
    # ABDOMEN_PELVIS
    # ABDO_PELVIS
    # BRAIN
    # CAP
    # CHEST
    # CHEST_ABDO
    # CHEST_ABDOMEN
    # CHEST_ABDO_PELVI
    # CHEST_TO_PELVIS
    # CH_AB_PEL
    # COLONOGRAPHY
    # CTA_CARDIAC
    # CTPA
    # HEAD
    # HEART
    # HRCT
    # KUB
    rc = {
            'HEAD': False,
            'NECK': False,
            'CHEST': False,
            'ABDOMEN': False,
            'PELVIS': False,
            'BACK': False,
            'HIP': False,
            'EXTREMITY': False,
            'TRUNK': False
        }
    if not bpe or len(bpe) < 4:
        return rc
    if 'BRAIN' in bpe or 'HEAD' in bpe:
        rc['HEAD'] = True
    if 'CHEST' in bpe or 'CH_' in bpe or 'HEART' in bpe or 'CARDIAC' in bpe:
        rc['CHEST'] = True
    if 'ABDO' in bpe or '_AB' in bpe or 'AB_' in bpe:
        rc['ABDOMEN'] = True
    if 'COLON' in bpe:
        rc['ABDOMEN'] = True
    if 'PELVIS' in bpe or 'PELVI' in bpe or '_PEL' in bpe or 'PEL_' in bpe:
        rc['PELVIS'] = True
    return rc

# We want to create one SR record per series, with columns:
#  id,SOPInstanceUID,SeriesInstanceUID,StudyInstanceUID,PatientID,ModalitiesInStudy
id = 1
with open('sample_SR.csv', 'w', newline='') as fd:
    writer = csv.DictWriter(fd, quoting=csv.QUOTE_MINIMAL, lineterminator='\n', fieldnames=['id','SOPInstanceUID','SeriesInstanceUID','StudyInstanceUID','PatientID','ContentDate','ModalitiesInStudy'])
    writer.writeheader()
    for series in series_list:
        # Look up the major body parts mentioned
        bodypartexamined = series['BodyPartExamined']
        bodypart = body_part_lookup(bodypartexamined)
        #print('BODYPART %s %s from %s' % (any(bodypart.values()), bodypart, bodypartexamined))
        # Look through the list of images to find one from this series so we can get PatientID
        for image in image_list:
            if image['SeriesInstanceUID'] == series['SeriesInstanceUID']:
                print('Series %s patient %s' % (series['SeriesInstanceUID'], image['PatientID']))
                break
        # Write the output CSV
        writer.writerow({
            'id': id,
            'SOPInstanceUID': '2.25.%05d' % id,
            'SeriesInstanceUID': series['SeriesInstanceUID'],
            'StudyInstanceUID':  series['StudyInstanceUID'],
            'PatientID':         image['PatientID'],
            'ContentDate':       series['SeriesDate'],
            'ModalitiesInStudy': '%s\\SR' % series['Modality']
            })
        id += 1
