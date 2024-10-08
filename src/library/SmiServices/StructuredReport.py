# Parse a DICOM Structured Report in JSON format as output by the MongoDB database.
import os
import re
import sys
from tempfile import TemporaryFile

import pydicom
from SmiServices import Dicom
from SmiServices.Dicom import has_tag
from SmiServices.Dicom import tag_is
from SmiServices.Dicom import tag_val
from SmiServices.StringUtils import redact_html_tags_in_string


# ---------------------------------------------------------------------
# List of known keys which we either parse or can safely ignore
# (all the others will be reported during testing to ensure no content is missed).
#  label is the [[label]] output for SemEHR to use (see its JSON config file)
#  tag is the DICOM tag name
#  decode_func is a function to convert the value if needed
#  redact is True if the value of this tag should be kept and redacted
#   during anonymisation, false if tag is just for SemEHR header info,
#   see the DicomText.py parse() function.
sr_keys_to_extract = [
    # These are all of type PN:
    { 'label':'Consulting Physician Name', 'tag':'ConsultingPhysicianName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Performing Physician Name', 'tag':'PerformingPhysicianName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Name Of Physicians Reading Study', 'tag':'NameOfPhysiciansReadingStudy', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Operators Name', 'tag':'OperatorsName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Other Patient Names', 'tag':'OtherPatientNames', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Patient Birth Name', 'tag':'PatientBirthName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Patient Mother Birth Name', 'tag':'PatientMotherBirthName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Secondary Reviewer Name', 'tag':'SecondaryReviewerName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Evaluator Name', 'tag':'EvaluatorName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Scheduled Performing Physician Name', 'tag':'ScheduledPerformingPhysicianName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Names Of Intended Recipients Of Results', 'tag':'NamesOfIntendedRecipientsOfResults', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Human Performer Name', 'tag':'HumanPerformerName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Verifying Observer Name', 'tag':'VerifyingObserverName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Person Name', 'tag':'PersonName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Content Creator Name', 'tag':'ContentCreatorName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Reviewer Name', 'tag':'ReviewerName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    # Plain text:
    { 'label':'Institution Name', 'tag':'InstitutionName', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Institution Address', 'tag':'InstitutionAddress', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Institutional Department Name', 'tag':'InstitutionalDepartmentName', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Patient Address', 'tag':'PatientAddress', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    # First version:
    { 'label':'Study Description', 'tag':'StudyDescription', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Study Date', 'tag':'StudyDate', 'decode_func':Dicom.sr_decode_date, 'redact':False},
    { 'label':'Series Description', 'tag':'SeriesDescription', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Series Date', 'tag':'SeriesDate', 'decode_func':Dicom.sr_decode_date, 'redact':False},
    { 'label':'Performed Procedure Step Description', 'tag':'PerformedProcedureStepDescription', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'ProtocolName', 'tag':'ProtocolName', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'StudyComments', 'tag':'StudyComments', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Content Date', 'tag':'ContentDate', 'decode_func':Dicom.sr_decode_date, 'redact':False},
    { 'label':'Patient ID', 'tag':'PatientID', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Patient Name', 'tag':'PatientName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    { 'label':'Patient Birth Date', 'tag':'PatientBirthDate', 'decode_func':Dicom.sr_decode_date, 'redact':False},
    { 'label':'Patient Sex', 'tag':'PatientSex', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Patient Age', 'tag':'PatientAge', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Patient Weight', 'tag':'PatientWeight', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Medical Alerts', 'tag':'MedicalAlerts', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Allergies', 'tag':'Allergies', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Ethnic Group', 'tag':'EthnicGroup', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'Referring Physician Name', 'tag':'ReferringPhysicianName', 'decode_func':Dicom.sr_decode_PNAME, 'redact':False},
    # TextValue is typically where the main text body resides:
    { 'label':'Text', 'tag':'TextValue', 'decode_func':Dicom.sr_decode_plaintext, 'redact':True},
    # ImageComments is often used by DEXA, but default to False and turn it on manually:
    { 'label':'ImageComments', 'tag':'ImageComments', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    # Additional Comments tags are available:
    { 'label':'PatientComments', 'tag':'PatientComments', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'CommentsOnThePerformedProcedureStep', 'tag':'CommentsOnThePerformedProcedureStep', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'RequestedProcedureComments', 'tag':'RequestedProcedureComments', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'CommentsOnRadiationDose', 'tag':'CommentsOnRadiationDose', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'FrameComments', 'tag':'FrameComments', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
    { 'label':'AssertionComments', 'tag':'AssertionComments', 'decode_func':Dicom.sr_decode_plaintext, 'redact':False},
]


sr_keys_to_ignore = [
    '_id',        # an artefact of the MongoDB extract
    'header',     # an artefact of the SMI MongoDB load microservice
    'InstanceCreationDate',
    'InstanceCreationTime',
    'SOPClassUID',
    'SOPInstanceUID',
    'StudyTime',
    'ContentTime',
    'AccessionNumber',
    'Modality',
    'ModalitiesInStudy',
    'Manufacturer',
    'ReferencedPerformedProcedureStepSequence',
    'TypeOfPatientID',
    'IssuerOfPatientID',
    'OtherPatientIDs',
    'OtherPatientIDsSequence',
    'StudyInstanceUID',
    'SeriesInstanceUID',
    'StudyID',
    'SeriesNumber',
    'InstanceNumber',
    'NumberOfStudyRelatedInstances',
    'ValueType',
    'ContinuityOfContent',
    'CurrentRequestedProcedureEvidenceSequence',
    'CompletionFlag',
    'VerificationFlag',
    'ContentTemplateSequence',
    'SpecificCharacterSet',
    'CodingSchemeIdentificationSequence',
    'ImageType',
    'SeriesTime',
    'StationName',
    'PhysiciansOfRecord',
    'ManufacturerModelName',
    'SoftwareVersions',
    'DateOfLastCalibration',
    'TimeOfLastCalibration',
    'RequestingPhysician',
    'RequestingService',              # XXX do we want this?
    'RequestedProcedureDescription',  # XXX do we want this?
    'RequestAttributesSequence',      # XXX what is this?
    'PerformedProcedureStepStartDate',
    'PerformedProcedureStepStartTime',
    'PerformedProcedureStepID',
    'PerformedProcedureCodeSequence', # XXX what is this? does it ever exist?
    'PerformedProtocolCodeSequence',  # XXX what is this?
    'ReferringPhysicianName',
    'TotalNumberOfExposures',
    'ExposedArea',
    'ExposedDoseSequence',
    'ExposureDoseSequence',
    'EntranceDoseInmGy',
    'ProcedureCodeSequence', # XXX what is this?
    'ReferencedStudySequence', # XXX what is this?
    'PatientSize', # XXX do we want this?
    'DeviceSerialNumber',
    'QueryRetrieveLevel',
    'ScheduledStepAttributesSequence',
    'AcquisitionDate',
    'AcquisitionTime',
    'AdditionalPatientHistory', # XXX do we want this?
    'AdmittingDiagnosesDescription', # XXX do we want this?
    'BodyPartExamined', # XXX do we want this?
    'BranchOfService',
    'CommentsOnThePerformedProcedureStep', # XXX do we want this?
    'CompletionFlagDescription',
    'ConfidentialityConstraintOnPatientDataDescription',
    'CountryOfResidence',
    'CountsAccumulated',
    'InstanceCreatorUID',
    'LastMenstrualDate',
    'MedicalRecordLocator',
    'MilitaryRank',
    'ObservationDateTime',
    'Occupation',
    'PatientBirthTime',
    'PatientComments', # XXX do we want this?
    'PatientInsurancePlanCodeSequence',
    'PatientReligiousPreference',
    'PatientState',
    'PatientTelephoneNumbers',
    'PredecessorDocumentsSequence',
    'PregnancyStatus',
    'QualityControlImage',
    'ReferencedPatientSequence',
    'ReferencedRequestSequence',
    'RegionOfResidence',
    'RelationshipType',
    'RequestedProcedureCodeSequence', # XXX do we want this?
    'RequestedProcedureComments', # XXX do we want this?
    'ScheduledStudyStartDate',
    'ScheduledStudyStartTime',
    'SmokingStatus',
    'SpatialResolution',
    'SpecialNeeds',
    'StorageMediaFileSetUID',
    'StudyReadDate',
    'StudyReadTime',
    'PresentationIntentType',
    'ImagerPixelSpacing',
    'PositionerType',
    'DetectorType',
    'DetectorDescription',
    'DetectorID',
    'DetectorManufacturerName',
    'DetectorManufacturerModelName',
    'PatientOrientation',
    'ImageLaterality',
    'SamplesPerPixel',
    'PhotometricInterpretation',
    'Rows',
    'Columns',
    'PixelSpacing',
    'BitsAllocated',
    'BitsStored',
    'HighBit',
    'PixelRepresentation',
    'SmallestImagePixelValue',
    'LargestImagePixelValue',
    'BurnedInAnnotation',
    'PixelIntensityRelationship',
    'PixelIntensityRelationshipSign',
    'WindowCenter',
    'WindowWidth',
    'RescaleIntercept',
    'RescaleSlope',
    'RescaleType',
    'LossyImageCompression',
    'PresentationLUTShape',
    'OverlayRows',
    'OverlayColumns',
    'OverlayType',
    'OverlaySubtype',
    'OverlayOrigin',
    'OverlayBitsAllocated',
    'OverlayBitPosition',
    'OverlayData',
    'PixelData',
    'TimeOfSecondaryCapture',
    'SecondaryCaptureDeviceManufacturer',
    'SecondaryCaptureDeviceManufacturerModelName',
    'SecondaryCaptureDeviceSoftwareVersions',
    'SeriesInStudy',
    'PlanarConfiguration',
    #'VerifyingObserverSequence', # may contain PII
    'AcquisitionDateTime',
    'AcquisitionDeviceProcessingCode',
    'AcquisitionDeviceProcessingDescription',
    'AcquisitionNumber',
    'AnnotationDisplayFormatID',
    'BoneThermalIndex',
    'BorderDensity',
    'CineRate',
    'ConfidentialityCode',
    'ContrastBolusAgent',
    'ContrastBolusStartTime',
    'ConversionType',
    'DateOfLastDetectorCalibration',
    'DateOfSecondaryCapture',
    'DepthOfScanField',
    'DerivationDescription',
    'DetectorActiveShape',
    'DetectorBinning',
    'DetectorConfiguration',
    'DeviationIndex',
    'DistanceSourceToDetector',
    'DistanceSourceToPatient',
    'DocumentTitle',
    'EntranceDose',
    'Exposure',
    'ExposureControlMode',
    'ExposureIndex',
    'ExposureInuAs',
    'ExposureTime',
    'ExposureTimeInuS',
    'FieldOfViewDimensions',
    'FieldOfViewShape',
    'FilmOrientation',
    'FilterType',
    'FocalSpots',
    'FocusDepth',
    'FrameIncrementPointer',
    'FrameTime',
    'Grid',
    'HeartRate',
    'EncapsulatedDocument', # XXX is this only PDF, or ???
    'MIMETypeOfEncapsulatedDocument',
    'InterpretationStatusID',
    'ImageReference',        # XXX contains JSON, refers to other images, but also has PII
]


# ---------------------------------------------------------------------
# Return True if the DICOM tag named keystr can be ignored, either because
# it exists at the top level of the document and has already been output,
# or because it contains nothing of interest,
# or it is not recognised so cannot be decoded.
# Uses the global list sr_keys_to_ignore

def sr_key_can_be_ignored(keystr):
    if re.match('^[0-9a-fA-F]{8}$', keystr):
        keystr = pydicom.datadict.keyword_for_tag(keystr)
    if keystr in sr_keys_to_ignore:
        return True
    # If already handled explicitly elsewhere it can also be ignored
    for sr_extract_dict in sr_keys_to_extract:
        if keystr == sr_extract_dict['tag']:
            return True
    # We cannot definitively decode private tags, BUT some contain information which is not anywhere else, even person names!
    # XXX TODO: add the ones we know (study description, hospital name, etc)
    if '-PrivateCreator' in keystr:
        return True
    if '-Unknown' in keystr:
        return True
    if '-CSA ' in keystr: # part of SIEMENS CSA HEADER
        return True
    if ('-Dataset Name') in keystr: # part of GEMS_GENIE_1
        return True
    return False


# ---------------------------------------------------------------------

class StructuredReport:
    _replace_HTML_entities = True    # replace HTML tags with same length of space chars
    _replace_HTML_char = '.'         # replace HTML tags with same length of space chars
    _replace_newline_char = '\n'     # replace CR and LF with spaces
    _redact_char = 'X'               # character used to redact text
    _redact_char_digit = '9'         # character used to redact digits in text

    def __init__(
        self,
        replace_HTML_entities = _replace_HTML_entities, \
        replace_HTML_char = _replace_HTML_char, \
        replace_newline_char = _replace_newline_char,
    ):
        """ Constructor
        """
        self._replace_HTML_entities = replace_HTML_entities
        self._replace_HTML_char = replace_HTML_char
        self._replace_newline_char = replace_newline_char

    def setRedactChar(self, rchar):
        """ Change the character used to anonymise/redact text.
        Can be a single character or an empty string.
        XXX haven't tried a multi-character string yet.
        Only used for text not digits (see redact_char_digit).
        See also redact_random_length.
        This is a static class member not an instance member
        so it applies to all instances of this class.
        """
        StructuredReport._redact_char = rchar

    def setReplaceHTMLChar(self, rchar):
        """ Change the character used to remove HTML.
        Can be a single character or an empty string.
        XXX haven't tried a multi-character string yet.
        """
        self._replace_HTML_char = rchar

    def setReplaceNewlineChar(self, rchar):
        """ Change the character used to remove HTML.
        Can be a single character or an empty string.
        XXX haven't tried a multi-character string yet.
        """
        self._replace_newline_char = rchar

    # ---------------------------------------------------------------------
    # Output the string given in valstr, if not empty.
    # Prepends a section title given in keystr if not empty.
    # eg.  [[keystr]] valstr
    # Replaces HTML tags <BR> with newlines.
    # Removes multiple line endings for clarity.

    def _SR_output_string(self, keystr, valstr, fp):
        # If it's a list then print each element (but only expecting a single one line ['Findings'])
        if isinstance(valstr, list):
            return [self._SR_output_string(keystr,X,fp) for X in valstr]
        # The Key may also be a list but only take first element
        if isinstance(keystr, list):
            keystr = keystr[0]
        # Handle a value like { "Alphabetic": "my name" }
        if isinstance(valstr, dict) and 'Alphabetic' in valstr:
            valstr = valstr['Alphabetic']
        # If there is no value the do not print anything at all
        if valstr == None or valstr == '':
            return
        # If we end up with an integer convert to string
        if not isinstance(valstr, str):
            valstr = str(valstr)
        # XXX should we be using Dicom.sr_decode_PNAME if it's a PN/PNAME ???
        # Replace CRs with LF
        valstr = re.sub('\r+', '\n', valstr)
        # Replace all HTML
        if '<' in valstr and '>' in valstr:
            valstr = redact_html_tags_in_string(
                valstr,
                replace_char = self._replace_HTML_char,
                replace_newline = self._replace_newline_char,
            )
        # Remove superfluous LFs
        valstr = re.sub('\n+', '\n', valstr)
        # If there is no key then do not print a prefix
        if keystr == None or keystr == '':
            fp.write('%s\n' % (valstr))
        else:
            fp.write('[[%s]] %s\n' % (keystr, valstr))


    # ---------------------------------------------------------------------
    def find_PersonNames(self, json_dict, names_list):
        """ Return a list of names (decoded from PN format having ^ separators)
        from all of the 'PersonName' tags (which probably does not include any
        top-level tags with a vr of PN). This is a recursive function.
        Returns the names in the names_list list which must already exist.
        """
        if isinstance(json_dict, list):
            for item in json_dict:
                self.find_PersonNames(item, names_list)
        elif isinstance(json_dict, dict):
            for item in json_dict.keys():
                # Ignore the MongoDB message metadata dict
                if item == 'MessageHeader':
                    return
                # We don't have the datatype to check for "PN" so assume
                # anything ending with Name contains a PersonName
                # This will also catch Institution Name and Observer Name
                if item.endswith('Name'):
                    tagval = tag_val(json_dict, item, atomic=True)
                    names_list.append(Dicom.sr_decode_PNAME(tagval))
                # Check if the value of this item is a list or dict
                self.find_PersonNames(json_dict[item], names_list)

    # ---------------------------------------------------------------------
    # Internal function called by _SR_parse_key to handle
    # ContentSequences of various types.

    def _SR_parse_content_sequence_item(self, cs_item, fp):
        value_type = tag_val(cs_item, 'ValueType')
        if value_type == 'PNAME' or value_type == ['PNAME']:
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), tag_val(cs_item, 'PersonName'), fp)
        elif value_type == 'DATETIME' or value_type == ['DATETIME']:
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), tag_val(cs_item, 'DateTime'), fp)
        elif value_type == 'DATE' or value_type == ['DATE']:
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), tag_val(cs_item, 'Date'), fp)
        elif value_type == 'TEXT' or value_type == ['TEXT']:
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), tag_val(cs_item, 'TextValue'), fp)
        elif (value_type == 'NUM' or value_type == ['NUM']) and has_tag(cs_item, 'MeasuredValueSequence'):
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(cs_item['ConceptNameCodeSequence']), Dicom.sr_decode_MeasuredValueSequence(tag_val(cs_item, 'MeasuredValueSequence')), fp)
        elif (value_type == 'NUM' or value_type == ['NUM']) and has_tag(cs_item, 'NumericValue'):
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), tag_val(cs_item, 'NumericValue'), fp)
        elif value_type == 'CODE' or value_type == ['CODE']:
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptCodeSequence')), fp)
        elif value_type == 'UIDREF' or value_type == ['UIDREF']:
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), tag_val(cs_item, 'UID'), fp)
        elif value_type == 'IMAGE' or value_type == ['IMAGE']:
            self._SR_output_string(Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ReferencedSOPSequence')), Dicom.sr_decode_ReferencedSOPSequence(tag_val(cs_item, 'ReferencedSOPSequence')), fp)
        elif value_type == 'CONTAINER' or value_type == ['CONTAINER']:
            # Sometimes it has no ContentSequence or is 'null'
            if has_tag(cs_item, 'ContentSequence') and tag_val(cs_item, 'ContentSequence') != None:
                if has_tag(cs_item, 'ConceptNameCodeSequence'):
                    self._SR_output_string('', Dicom.sr_decode_ConceptNameCodeSequence(tag_val(cs_item, 'ConceptNameCodeSequence')), fp)
                self._SR_parse_key(cs_item, 'ContentSequence', fp)
        # explicitly ignore TIME, SCOORD, TCOORD, COMPOSITE, IMAGE, WAVEFORM
        # as they have no useful text to return
        elif value_type == 'SCOORD' or value_type == ['SCOORD']:
            pass
        elif value_type == 'TCOORD' or value_type == ['TCOORD']:
            pass
        elif value_type == 'COMPOSITE' or value_type == ['COMPOSITE']:
            pass
        elif value_type == 'TIME' or value_type == ['TIME']:
            pass
        elif value_type == 'WAVEFORM' or value_type == ['WAVEFORM']:
            pass
        else:
            print('UNEXPECTED ITEM OF TYPE %s = %s' % (value_type, cs_item), file=sys.stderr)

    # ---------------------------------------------------------------------
    # Internal function to parse a DICOM tag which calls itself recursively
    # when it finds a sequence
    # Uses str_output_string to format the output.

    def _SR_parse_key(self, json_dict, json_key, fp):
        if tag_is(json_key, 'ConceptNameCodeSequence'):
            self._SR_output_string('', Dicom.sr_decode_ConceptNameCodeSequence(tag_val(json_dict, json_key)), fp)
        elif tag_is(json_key, 'AnatomicRegionSequence'):
            print('UNEXPECTED AnatomicRegionSequence ignored', file=sys.stderr)
            pass
        elif tag_is(json_key, 'SourceImageSequence'):
            self._SR_output_string('SourceImage', Dicom.sr_decode_SourceImageSequence(tag_val(json_dict, json_key)), fp)
        elif tag_is(json_key, 'ContentSequence') or tag_is(json_key, 'Sequence') or tag_is(json_key, 'AcquisitionContextSequence'):
            for cs_item in tag_val(json_dict, json_key):
                if has_tag(cs_item, 'ValueType'): # no need for RelationshipType? and has_tag(cs_item, 'RelationshipType')
                    self._SR_parse_content_sequence_item(cs_item, fp)
        else:
            if not sr_key_can_be_ignored(json_key):
                #print('UNEXPECTED KEY %s (%s) = %s' % (json_key, pydicom.datadict.keyword_for_tag(json_key), json_dict[json_key]), file=sys.stderr)
                self._SR_output_string(pydicom.datadict.keyword_for_tag(json_key), Dicom.tag_val(json_dict, json_key), fp)

    # ---------------------------------------------------------------------
    # Main parsing entrypoint

    def SR_parse(self, json_dict, doc_name, fp = sys.stdout):
        """ Parse a Structured Report held in a python dictionary
        which has come from MongoDB or from dcm2json
        Output to the file pointer fp (default is stdout).
        """

        self._SR_output_string('Document name', doc_name, fp)

        # Output a set of known tags from the root of the document
        # This loop does the equivalent of
        # _SR_output_string('Study Date', sr_decode_date(sr_get_key(json_dict, 'StudyDate')))
        for sr_extract_dict in sr_keys_to_extract:
            self._SR_output_string(sr_extract_dict['label'], sr_extract_dict['decode_func'](Dicom.tag_val(json_dict, sr_extract_dict['tag'])), fp)

        # Now output [[Other Names]] for all the elements having vr of PN
        names_list = []
        self.find_PersonNames(json_dict, names_list)
        #print(names_list)
        for name in names_list:
            self._SR_output_string('Other Names', name, fp)

        # Now output all the remaining tags which are not ignored
        # except for a ConceptSequence which will be done below.
        has_conceptseq_at_root_level = has_tag(json_dict, 'ValueType')
        for json_key in json_dict:
            if not has_conceptseq_at_root_level or (not (tag_is(json_key, 'ConceptCodeSequence') or tag_is(json_key, 'ConceptNameCodeSequence'))):
                self._SR_parse_key(json_dict, json_key, fp)

        # If it has elements which should be inside a ContentSequence but aren't:
        if has_tag(json_dict, 'ValueType'):
            self._SR_parse_content_sequence_item(json_dict, fp)


def test_SR_parse_key():
    # Extract a small fragment using: dcm2json report10.dcm | dicom_tag_lookup.py
    SR_dict = {
        # Structured Reports often have the main body in a sequence
        "ContentSequence": {
            "vr": "SQ",
            "Value": [
                {
                    "RelationshipType": { "vr": "CS", "Value": [ "CONTAINS"]},
                    "ValueType": { "vr": "CS", "Value": [ "TEXT"]},
                    "ConceptNameCodeSequence": {
                        "vr": "SQ",
                        "Value": [
                            {
                                "CodeValue": { "vr": "SH", "Value": [ "RE.02"]},
                                "CodingSchemeDesignator": { "vr": "SH", "Value": [ "99_OFFIS_DCMTK"]},
                                "CodeMeaning": { "vr": "LO", "Value": [ "Request"]},
                            },
                        ],
                    },
                    "TextValue": { "vr": "UT", "Value": [ "MRI: Knee"]},
                },
                {
                  "RelationshipType": { "vr": "CS", "Value": [ "CONTAINS"]},
                  "ValueType": { "vr": "CS", "Value": [ "PNAME"]},
                  "ConceptNameCodeSequence": { "vr": "SQ", "Value": [ { "CodeMeaning": { "vr": "LO", "Value": [ "Physician"]}}]},
                  "PersonName": { "vr": "PN", "Value": [ { "Alphabetic": "Klugman^^^Dr."}]},
                },
            ],
        },
        # Structured Reports often have the main body in a TextValue instead
        "TextValue": { "vr": "UT", "Value": [ "Hello World"]},
        # Structured Reports sometimes have text in a ImageComments tag
        "ImageComments": { "vr": "LT", "Value": [ "<DXA_RESULTS><EXAM_DATE time=\"14:16:15\" id=\"82\">19/02/2018</EXAM_DATE><SCAN type=\"DualFemur\" id=\"19\"><ROI region=\"Neck Left\" id=\"0\"><BMD units=\" g/cm2\" id=\"3\">0.826</BMD><BMD_PYA units=\"%\" id=\"7\">80</BMD_PYA><BMD_TSCORE id=\"6\">-1.5</BMD_TSCORE><BMD_PAM units=\"%\" id=\"9\">114</BMD_PAM><BMD_ZSCORE id=\"8\">0.7</BMD_ZSCORE><BMC units=\" g\" id=\"5\">5.08</BMC><AREA units=\" cm2\" id=\"2\">6.15</AREA></ROI></SCAN></DXA_RESULTS>" ]},
        # Add a sequence where you expect ConceptName=ConceptCode output
        "AcquisitionContextSequence": {
          "vr": "SQ",
          "Value": [
            {
              "ValueType": {"vr": "CS", "Value": ["CODE"]},
              "ConceptNameCodeSequence": {
                "vr": "SQ",
                "Value": [
                  {
                    "CodingSchemeDesignator": {"vr": "SH", "Value": ["DCM"]},
                    "CodeMeaning": {"vr": "LO", "Value": ["Fitzpatrick Skin Type"]},
                    "ContextUID": {"vr": "UI", "Value": ["1.2.840.10008.6.1.1346"]},
                  },
                ],
              },
              "ConceptCodeSequence": {
                "vr": "SQ",
                "Value": [
                  {
                    "CodeValue": {"vr": "SH", "Value": ["C74571"]},
                    "CodingSchemeDesignator": {"vr": "SH", "Value": ["LN"]},
                    "CodeMeaning": {"vr": "LO", "Value": ["Fitzpatrick Skin Type III"]},
                  },
                ],
              },
            },
          ],
        },
        # Now add a ValueType and ConceptNameCodeSequence at the root level
        # in the document, very unusual, only seen in Dermatology SRs,
        # normally these are inside a proper Sequence.
        "ValueType": {"vr": "CS", "Value": ["CODE"]},
        "ConceptNameCodeSequence": {
          "vr": "SQ",
          "Value": [
            {
              "CodeValue": {"vr": "SH", "Value": ["2F23"]},
              "CodingSchemeDesignator": {"vr": "SH", "Value": ["I11"]},
              "CodeMeaning": {"vr": "LO", "Value": ["Benign dermal fibrous or fibrohistiocytic neoplasms"]},
            },
          ],
        },
        "ConceptCodeSequence": {
          "vr": "SQ",
          "Value": [
            {
              "CodeValue": {"vr": "SH", "Value": ["2F23.0"]},
              "CodingSchemeDesignator": {"vr": "SH", "Value": ["I11"]},
              "CodeMeaning": {"vr": "LO", "Value": ["Dermatofibroma"]},
            },
          ],
        },
    }

    # Create a SR object
    sr = StructuredReport(replace_HTML_char = '.')

    # Test with the above piece of JSON
    with TemporaryFile(mode='w+', encoding='utf-8') as fd:
        sr.SR_parse(SR_dict, 'Test', fd)
        fd.seek(0)
        assert(
            fd.read() == '[[Document name]] Test\n'
            '[[Text]] Hello World\n'
            '[[ImageComments]] ................................................19/02/2018.....................................................................................................0.826................................80.............................-1.5.......................................114.............................0.7....................................5.08................................6.15..................................\n'
            '[[Other Names]] Dr. Klugman\n'
            '[[Request]] MRI: Knee\n'
            '[[Physician]] Klugman^^^Dr.\n'
            '[[Fitzpatrick Skin Type]] Fitzpatrick Skin Type III\n'
            '[[Benign dermal fibrous or fibrohistiocytic neoplasms]] Dermatofibroma\n'
        )

    # Add some HTML into the string and check it's redacted
    SR_dict['ContentSequence']['Value'][0]['TextValue']['Value'][0] = "<html><style class=\"nice\">MRI: Knee"
    with TemporaryFile(mode='w+', encoding='utf-8') as fd:
        sr._SR_parse_key(SR_dict, 'ContentSequence', fd)
        fd.seek(0)
        assert(fd.read() == '[[Request]] ..........................MRI: Knee\n[[Physician]] Klugman^^^Dr.\n')

    # Check that the HTML redaction can also squash (remove) characters
    sr.setReplaceHTMLChar('')
    with TemporaryFile(mode='w+', encoding='utf-8') as fd:
        sr._SR_parse_key(SR_dict, 'ContentSequence', fd)
        fd.seek(0)
        assert(fd.read() == '[[Request]] MRI: Knee\n[[Physician]] Klugman^^^Dr.\n')

def test_find_PersonNames():
    sr = StructuredReport()
    jd = {
        'InstitutionName': 'Ninewells Hospital',
        'Sequence': [ { 'PersonName': 'Klugman^^^Dr.'}],
        'Something Else': 'Other',
    }
    names_list = []
    sr.find_PersonNames(jd, names_list)
    assert (names_list == ['Ninewells Hospital', 'Dr. Klugman'])
