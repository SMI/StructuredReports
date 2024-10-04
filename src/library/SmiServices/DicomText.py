""" Functions to assist with decoding text in DICOM files
"""
import os
import random
import typing

import pydicom
import tempfile
from SmiServices import Dicom
from SmiServices.StringUtils import redact_html_tags_in_string
from SmiServices.StringUtils import string_match_ignore_linebreak
from SmiServices.StructuredReport import sr_keys_to_extract
from SmiServices.StructuredReport import sr_keys_to_ignore


# ---------------------------------------------------------------------


class DicomText:
    """ A class holding a DICOM file which can be parsed to extract the
    text, and can be redacted given a list of annotations.
    Typical usage:
    dicomtext = Dicom.DicomText(dcmname) # Reads the raw DICOM file
    dicomtext.parse()                    # Analyses the text inside the ContentSequence
    xmldictlist = Knowtator.annotation_xml_to_dict(xml.etree.ElementTree.parse(xmlfilename).getroot())
    dicomtext.redact(xmldictlist)        # Redacts the parsed text using the annotations
    dicomtext.write(redacted_dcmname)    # Writes out the redacted DICOM file
    OR
    write_redacted_text_into_dicom_file  # to rewrite a second file with redacted text
    After parse() you call text() to get the extracted text without HTML tags
    that can be fed into the anonymiser. That will output annotations,
    typically in Knowtator XML format, indicating the character positions
    of every word that needs to be redacted. To perform the redaction in
    a DICOM file you need to parse() then redact(xml), then call redacted_text()
    to see the text, or write*() to save a redacted DICOM file.
    The redacted text will still include the HTML tags which is why it is
    important to preserve exact character offsets between text(), anonymise
    and redact() steps.

    Class variables determine whether unknown tags are included in the output
    (ideally this would be True but in practice we are only interested in known tags
    and SemEHR ignores them).
    Replace HTML entities such as <BR> with newline is not done, it might break redaction.
    Redaction replaces text with X; random length uses random number of X instead,
    but do not use random length unless you are sure the change in string length won't
    break something else (eg. the string is inside a file format where length matters,
    or we need to keep the SemEHR annotations around, with their char offsets, for other reasons).
    """
    _include_header = True           # SemEHR uses some header fields to give context to body
    _include_unexpected_tags = False # SemEHR does not use unknown tags anyway so ignore them
    _warn_unexpected_tag = False     # print if an unexpected tag is encountered
    _replace_HTML_entities = True    # replace HTML tags with same length of space chars
    _replace_HTML_char = '.'         # replace HTML tags with same length of space chars
    _replace_newline_char = '\n'     # replace CR and LF with spaces
    _redact_random_length = False    # do not use True unless you're sure the change in length won't break something
    _redact_char = 'X'               # character used to redact text
    _redact_char_digit = '9'         # character used to redact digits in text

    def __init__(
        self,
        filename: str,
        include_header: bool = _include_header, 
        replace_HTML_entities: bool = _replace_HTML_entities, 
        replace_HTML_char : str= _replace_HTML_char, 
        replace_newline_char : str = _replace_newline_char,
        include_unexpected_tags : bool = _include_unexpected_tags,
    ):
        """ The DICOM file is read during construction.
        If include_header is True some DICOM header fields are output (default True).
        If replace_HTML_entities is True then all HTML is replaced by dots (default True).
        If replace_HTML_char is given then it is used instead of dots (default is dots).
        If replace_newline_char is given then it is used to replace \r and \n (default is \n).
        """
        self._p_text = '' # maintain string progress during plaintext walk
        self._r_text = '' # maintain string progress during redaction walk
        self._redacted_text = ''
        self._redact_offset = 0
        self._offset_list: list[dict[str, typing.Any]] = [] # XXX not used
        self._annotations: list[dict[str, typing.Any]] = []
        self._filename = filename
        self._dicom_raw = pydicom.dcmread(filename)
        # Copy class settings to instance settings with overrides
        self._include_header = include_header
        self._replace_HTML_entities = replace_HTML_entities
        self._replace_HTML_char = replace_HTML_char
        self._replace_newline_char = replace_newline_char
        self._include_unexpected_tags = include_unexpected_tags
        # XXX do we need to decode the text?
        self._dicom_raw.decode()

    def __repr__(self) -> str:
        return f'<DicomText: {self._filename}>'

    def enableTag(self, tagname: str) -> None:
        """ Enable the redation of a specific DICOM tag,
        by turning redact=True for the tag in sr_keys_to_extract.
        NOTE: this modifies the global variable, so all subsequent
        instances of DicomText will use the new value.
        """
        for entry in sr_keys_to_extract:
            if entry['tag']==tagname:
                entry['redact']=True

    def setRedactChar(self, rchar: str) -> None:
        """ Change the character used to anonymise/redact text.
        Can be a single character or an empty string.
        XXX haven't tried a multi-character string yet.
        Only used for text not digits (see redact_char_digit).
        See also redact_random_length.
        This is a static class member not an instance member
        so it applies to all instances of this class.
        """
        DicomText._redact_char = rchar

    def setReplaceHTMLChar(self, rchar: str) -> None:
        """ Change the character used to remove HTML.
        Can be a single character or an empty string.
        XXX haven't tried a multi-character string yet.
        """
        self._replace_HTML_char = rchar

    def setReplaceNewlineChar(self, rchar: str) -> None:
        """ Change the character used to remove HTML.
        Can be a single character or an empty string.
        XXX haven't tried a multi-character string yet.
        """
        self._replace_newline_char = rchar

    def SOPInstanceUID(self) -> str:
        """ Simply returns the SOPInstanceUID from the DICOM file
        in case you need to uniquely identify this input file.
        """
        return self._dicom_raw['SOPInstanceUID'].value

    def tag(self, tagname: str) -> str:
        """ Simply returns the value of the tag from the DICOM file.
        The tag is specified by name not by number:number.
        Returns the empty string if tag is not present.
        """
        tagcode = pydicom.datadict.tag_for_keyword(tagname)
        if not tagcode:
            return ''
        if tagcode in self._dicom_raw:
            return self._dicom_raw[tagcode].value
        else:
            return ''

    def list_of_PNAMEs(self) -> typing.List[str]:
        """ Return a list of the values of all tags with a VR of PN
        """
        names = set()
        for elem in self._dicom_raw.iterall():
            if elem.VR == 'PN' and len(str(elem.value)):
                names.add(str(elem.value))
        return list(names)

    def _data_element_parser(self, data_element: pydicom.DataElement) -> typing.Tuple[str, str]:
        """ Internal function called by the parse and redact callbacks
        to consistently convert the data_element into the string which
        will be returned, in both raw and html-redacted versions.
        Returns the tuple (rc, rc_parsed).
        If html redaction is disabled then rc_parsed == rc.
        """
        rc = ''
        rc_parsed = ''
        if data_element.VR in ['SH', 'CS', 'SQ', 'UI']:
            # "SH" Short String, "CS" Code String, "SQ" Sequence, "UI" UID ignored
            pass
        elif data_element.VR == 'LO':
            # "LO" Long String typically used for headings
            rc = rc_parsed = rc + ('# %s' % str(data_element.value)) + '\n'
        else:
            rc = rc + ('%s' % (str(data_element.value)))
            rc += '\n'
            # Replace HTML tags with spaces
            if self._replace_HTML_entities and '<' in rc:
                rc_parsed = redact_html_tags_in_string(
                    rc,
                    replace_char = self._replace_HTML_char,
                    replace_newline = self._replace_newline_char,
                )
            else:
                rc_parsed = rc
        return (rc, rc_parsed)

    def _dataset_read_callback(self, dataset: pydicom.Dataset, data_element: pydicom.DataElement) -> None:
        """ Internal function called during a walk of the dataset.
        Builds a class-member string _p_text as it goes.
        """
        _, rc_parsed = self._data_element_parser(data_element)
        if rc_parsed == '':
            return
        self._offset_list.append( {
            'offset':len(self._p_text),
            'string': rc_parsed,
        }, )
        self._p_text = self._p_text + rc_parsed

    def parse(self) -> None:
        """ Walk the dataset to extract the text which can then be
        returned via the text() method.
        """
        self._p_text = ''
        # Start by enumerating all known desired tags (whitelist)
        #  except explicitly do not include TextValue/ImageComments, handled below
        list_of_tagname_desired = [ k['tag'] for k in sr_keys_to_extract]
        if self._include_header:
            # Add all the known [[something]] headers
            for srkey in sr_keys_to_extract:
                tag: str = srkey['tag'] # type: ignore
                redact_tag: bool = srkey['redact'] # type: ignore
                # If tag is not TextValue and not ImageComments then:
                if tag in self._dicom_raw and not redact_tag:
                    decode_func: typing.Callable[[typing.Any], str] = srkey['decode_func'] # type: ignore
                    line = '[[%s]] %s\n' % (srkey['label'], decode_func(str(self._dicom_raw[tag].value)))
                    self._p_text = self._p_text + line
            # Collect all names in the whole document and add [[Other Names]] header
            names_list = self.list_of_PNAMEs()
            for name in names_list:
                line = '[[Other Names]] %s\n' % Dicom.sr_decode_PNAME(name)
                self._p_text = self._p_text + line
        # Now read ALL tags and use a blacklist (and ignore already done in whitelist).
        # Private tags will have tagname='' so ignore those too.
        if self._include_header:
            for drkey in self._dicom_raw:
                tagname = pydicom.datadict.keyword_for_tag(drkey.tag)
                if not drkey.VR == 'SQ' and not tagname in sr_keys_to_ignore and not tagname in list_of_tagname_desired and not tagname == '':
                    if DicomText._include_unexpected_tags:
                        line = '[[%s]] %s\n' % (tagname, drkey.value)
                        self._p_text = self._p_text + line
                        if DicomText._warn_unexpected_tag:
                            # XXX should we logging.warn?
                            print('Warning: including unexpected tag "%s" = "%s"' % (tagname, str(drkey.value)[0:20]))
                    else:
                        if DicomText._warn_unexpected_tag:
                            # XXX should we logging.warn?
                            print('Warning: ignored unexpected tag "%s" = "%s"' % (tagname, str(drkey.value)[0:20]))
        # Now handle the TextValue and ImageComments tags
        # Wrap the text with [[Text]] and [[EndText]] for SemEHR
        for srkey in sr_keys_to_extract:
            if not srkey['redact']:
                continue
            # Should only be TextValue and ImageComments
            # which get written as [[Text]] and [[ImageComments]]
            tagname = srkey['tag']
            taglabel = srkey['label']
            if tagname not in self._dicom_raw:
                continue
            textval = str(self._dicom_raw[tagname].value)
            self._p_text = self._p_text + ('[[%s]]\n' % taglabel)
            # XXX ImageComments might be XML, do we want to redact its tags?
            if self._replace_HTML_entities and '<' in textval:
                self._p_text = self._p_text + redact_html_tags_in_string(
                    textval,
                    replace_char = self._replace_HTML_char,
                    replace_newline = self._replace_newline_char,
                )
            else:
                self._p_text = self._p_text + textval
            self._p_text = self._p_text + ('\n[[End%s]]\n' % taglabel)
        # Now the text in the ContentSequence
        # Wrap the text with [[ContentSequence]] and [[EndContentSequence]] for SemEHR
        if 'ContentSequence' in self._dicom_raw:
            self._p_text = self._p_text + '[[ContentSequence]]\n'
            for content_sequence_item in self._dicom_raw.ContentSequence:
                content_sequence_item.walk(self._dataset_read_callback)
            self._p_text = self._p_text + '[[EndContentSequence]]\n'

    def redact_string(self, plaintext: str, offset: int, rlen: int, VR: str) -> str:
        """ Simple function to replace characters from the middle of a string.
        Starts at offset for rlen characters, replaced with X.
        If the VR (Dicom Value Representation) suggests a restricted
        character set then use a different redact_char (eg. numbers use '9')
        See https://dicom.nema.org/dicom/2013/output/chtml/part05/sect_6.2.html
        Can replace all for same length or randomise the amount.
        Returns the new string.
        """
        redact_length = rlen
        redact_char = DicomText._redact_char
        if VR in ['AS', 'CS', 'DA', 'DS', 'DT', 'IS', 'TM', 'UI']:
            redact_char = DicomText._redact_char_digit
        if DicomText._redact_random_length:
            redact_length = random.randint(-int(rlen/2), int(rlen/2))
        # Replace all dates with 11111111 to that they validate ok
        if VR in ['DA', 'DT']:
            redact_length = 8
            redact_char = '1'
        redacted_part = redact_char.rjust(redact_length, redact_char) if redact_char else ''
        rc = plaintext[0:offset] + redacted_part + plaintext[offset+rlen:]
        return rc

    def _dataset_redact_callback(self, dataset: typing.Any, data_element: typing.Any) -> typing.Optional[str]:
        """ Internal function called during a walk of the dataset during redaction.
        Builds a class-member string _r_text as it goes.
        Uses the annotation list in self._annotations to redact text.
        """
        rc, rc_parsed = self._data_element_parser(data_element)
        if rc_parsed == '':
            return None
        rc_without_html = rc_parsed
        # The current string is now len(self._r_text) ..to.. +len(rc)
        current_start = len(self._r_text)
        current_end   = current_start + len(rc)
        replacement = rc
        replacedAny = False
        #print('AT %d (offset %d) = %s' % (current_start, self._redact_offset, str(data_element.value)))
        # Check every annotation to see, if not already done, if it appears in this rc
        for annot in self._annotations:
            # Sometimes it reports text:None so ignore
            if not annot['text'] or (annot['start_char'] == annot['end_char']):
                annot['replaced'] = True
                continue
            # If already replaced then ignore
            if 'replaced' in annot:
                continue
            offset_limit = 32
            # Use the previously found offset to check if this annotation is within the current string
            if ((annot['start_char'] + self._redact_offset >= current_start-offset_limit) and
                    (annot['start_char'] + self._redact_offset < current_end+offset_limit)):
                annot_at = annot['start_char'] - current_start
                annot_end = annot['end_char'] - current_start
                replaced = False
                # SemEHR may have an extra line at the start so start_char offset need adjusting
                for offset in [self._redact_offset] + list(range(-offset_limit, offset_limit)):
                    if annot_at+offset < 0:
                        continue
                    # Do the comparison using text without html but replace inside text with html
                    if string_match_ignore_linebreak(rc_without_html[annot_at+offset : annot_end+offset], annot['text']):
                        replacement = self.redact_string(replacement, annot_at+offset, annot_end-annot_at, data_element.VR)
                        replaced = replacedAny = True
                        annot['replaced'] = True
                        #print('REPLACE: %s in %s at %d (offset %d)' % (repr(annot['text']), repr(replacement)[:20], annot_at, offset))
                        self._redact_offset = offset
                        break
                # Only need to report error at the end, no need for Warning here:
                #if not replaced:
                #    print('WARNING: offsets slipped:')
                #    print('  expected to find %s but found %s' % (repr(annot['text']), repr(rc[annot_at:annot_end])))
        if data_element.VR == 'PN' or data_element.VR == 'DA' or data_element.VR == 'DT':
            # Always fully redact the content of PersonName and Date tags
            replacement = self.redact_string(rc, 0, len(rc), data_element.VR)
            replacedAny = True
        # Put this replacement value back into the DICOM
        if replacedAny:
            data_element.value = replacement
        # _r_text is the original, _redacted_text has been redacted
        self._r_text = self._r_text + rc
        self._redacted_text = self._redacted_text + replacement
        return replacement if replacedAny else None


    def redact(self, annot_list: typing.List[typing.Dict[str, typing.Any]]) -> bool:
        """ Redact the text in the DICOM using the annotation list
        which is a list of dicts { start_char, end_char, text }.
        Uses the annotation list and _p_text to find and redact text
        so parse must already have been called.
        Modifies the actual state of the DICOM dataset _dicom_raw.
        Returns False if not all redactions could be done.
        """
        assert(self._p_text) # you must have called parse first
        self._r_text = ''    # XXX could start with '\n' to match semehr behaviour
        self._redacted_text = ''
        self._annotations = annot_list
        # TextValue and ImageComments are not sequences so manually call the callback
        # Adjust the _redact_offset for each header we would have inserted during a parse
        # e.g. [[Text]] and [[EndText]]
        for srkey in sr_keys_to_extract:
            if srkey['redact'] and (srkey['tag'] in self._dicom_raw):
                self._r_text += ('[[%s]]\n' % srkey['label'])
                self._dataset_redact_callback(None, self._dicom_raw[ srkey['tag'] ])
                #self._r_text += ('[[End%s]]\n' % srkey['label'])
        # A 'ContentSequence' needs to be walked recursively
        if 'ContentSequence' in self._dicom_raw:
            self._r_text += ('[[ContentSequence]]\n')
            for content_sequence_item in self._dicom_raw.ContentSequence:
                content_sequence_item.walk(self._dataset_redact_callback)
            #self._r_text += ('[[EndContentSequence]]\n')
        rc = True
        # Now check that all annotations were redacted, return False if not
        for annot in self._annotations:
            if not annot.get('replaced'):
                print('ERROR: could not find annotation (%s) in document (%s)' % (repr(annot['text']), str(annot)))
                rc = False
        #with open('DicomText_parsed.txt','w') as fd: print(self._p_text, file=fd)
        #with open('DicomText_redactbefore.txt','w') as fd: print(self._r_text, file=fd)
        #with open('DicomText_redactafter.txt','w') as fd: print(self._redacted_text, file=fd)
        return rc

    def redact_PN_DA_callback(self, dataset: pydicom.Dataset, data_element: pydicom.DataElement) -> None:
        if data_element.VR == "PN":
            data_element.value = DicomText._redact_char.rjust(len(data_element.value), DicomText._redact_char)
        if data_element.VR == "DA":
            data_element.value = "19000101"
        if data_element.VR == "DT":
            data_element.value = "19000101000000"

    def text(self) -> str:
        """ Returns the text after parse() has been called.
        """
        return self._p_text

    def redacted_text(self) -> str:
        """ Returns the redacted text after redact() has been called.
        """
        return self._redacted_text

    def write(self, newfile: str) -> None:
        """ Save the (redacted) DICOM as a new file.
        """
        self._dicom_raw.save_as(newfile)

    def write_redacted_text_into_dicom_file(self, destfile: str) -> None:
        """ Open the specified file (must exist) and copy our redacted
        text into that file. The intention is that the redacted text
        from DICOM file A can be inserted into an already-anonymised
        DICOM file B.
        """
        dicom_dest = pydicom.dcmread(destfile)
        # Replace the contents of the TextValue and ImageComments tags
        for srkey in sr_keys_to_extract:
            if not srkey['redact'] or srkey['tag'] not in self._dicom_raw:
                continue
            dicom_dest[ srkey['tag'] ] = self._dicom_raw[ srkey['tag'] ]
        # And replace ContentSequence as it is not in sr_keys_to_extract
        if 'ContentSequence' in self._dicom_raw:
            dicom_dest.ContentSequence = self._dicom_raw.ContentSequence
        # Redact names and dates in case CTP didn't do it
        dicom_dest.walk(self.redact_PN_DA_callback)
        # Save the modified file
        dicom_dest.save_as(destfile)

def test_DicomText() -> None:
    """ The test function requires a specially-crafted DICOM file
    as provided with SRAnonTool that has been modified to include HTML.
    """
    expected_without_header = """[[ContentSequence]]
# Request
MRI: Knee
# History
16 year old with right knee pain after an injury playing basketball.
# Findings
# Finding
......
..................................

.

..

.

There is bruising of the medial femoral condyle with some intrasubstance injury to the medial collateral ligament. The lateral collateral ligament in intact. The Baker's  cruciate ligament is irregular and slightly lax suggesting a partial tear. It does not appear to be completely torn. The posterior cruciate ligament is intact. The suprapatellar tendons are normal.
# Finding
There is a tear of the posterior limb of the medial meniscus which communicates with the superior articular surface. The lateral meniscus is intact. There is a Baker's cyst and moderate joint effusion.
# Finding
Internal derangement of the right knee with marked injury and with partial tear of the ACL; there is a tear of the posterior limb of the medial meniscus. There is a Baker's Cyst and joint effusion and intrasubstance injury to the medial collateral ligament.
# Best illustration of finding
[[EndContentSequence]]
"""
    expected_without_header_with_html = """[[ContentSequence]]
# Request
MRI: Knee
# History
16 year old with right knee pain after an injury playing basketball.
# Findings
# Finding
<html>
<style>
P { color: red; }
</style>
<P><BR><P>
There is bruising of the medial femoral condyle with some intrasubstance injury to the medial collateral ligament. The lateral collateral ligament in intact. The Baker's  cruciate ligament is irregular and slightly lax suggesting a partial tear. It does not appear to be completely torn. The posterior cruciate ligament is intact. The suprapatellar tendons are normal.
# Finding
There is a tear of the posterior limb of the medial meniscus which communicates with the superior articular surface. The lateral meniscus is intact. There is a Baker's cyst and moderate joint effusion.
# Finding
Internal derangement of the right knee with marked injury and with partial tear of the ACL; there is a tear of the posterior limb of the medial meniscus. There is a Baker's Cyst and joint effusion and intrasubstance injury to the medial collateral ligament.
# Best illustration of finding
[[EndContentSequence]]
"""
    expected_with_header = """[[Study Description]] OFFIS Structured Reporting Samples
[[Study Date]] 
[[Series Description]] RSNA '95, Picker, MR
[[Content Date]] 20050530
[[Patient ID]] PIKR752962
[[Patient Name]] John R Walz
[[Patient Birth Date]] 19781024
[[Patient Sex]] M
[[Referring Physician Name]] 
[[ImageComments]] <DXA_RESULTS><EXAM_DATE time="14:16:15" id="82">19/02/2018</EXAM_DATE><SCAN type="DualFemur" id="19"><ROI region="Neck Left" id="0"><BMD units=" g/cm2" id="3">0.826</BMD><BMD_PYA units="%" id="7">80</BMD_PYA><BMD_TSCORE id="6">-1.5</BMD_TSCORE><BMD_PAM units="%" id="9">114</BMD_PAM><BMD_ZSCORE id="8">0.7</BMD_ZSCORE><BMC units=" g" id="5">5.08</BMC><AREA units=" cm2" id="2">6.15</AREA></ROI></SCAN></DXA_RESULTS>
[[Other Names]] John R Walz
[[ContentSequence]]
# Request
MRI: Knee
# History
16 year old with right knee pain after an injury playing basketball.
# Findings
# Finding
......
..................................

.

..

.

There is bruising of the medial femoral condyle with some intrasubstance injury to the medial collateral ligament. The lateral collateral ligament in intact. The Baker's  cruciate ligament is irregular and slightly lax suggesting a partial tear. It does not appear to be completely torn. The posterior cruciate ligament is intact. The suprapatellar tendons are normal.
# Finding
There is a tear of the posterior limb of the medial meniscus which communicates with the superior articular surface. The lateral meniscus is intact. There is a Baker's cyst and moderate joint effusion.
# Finding
Internal derangement of the right knee with marked injury and with partial tear of the ACL; there is a tear of the posterior limb of the medial meniscus. There is a Baker's Cyst and joint effusion and intrasubstance injury to the medial collateral ligament.
# Best illustration of finding
[[EndContentSequence]]
"""
    expected_with_header_and_imagecomments = """[[Study Description]] OFFIS Structured Reporting Samples
[[Study Date]] 
[[Series Description]] RSNA '95, Picker, MR
[[Content Date]] 20050530
[[Patient ID]] PIKR752962
[[Patient Name]] John R Walz
[[Patient Birth Date]] 19781024
[[Patient Sex]] M
[[Referring Physician Name]] 
[[Other Names]] John R Walz
[[ImageComments]]
................................................19/02/2018.....................................................................................................0.826................................80.............................-1.5.......................................114.............................0.7....................................5.08................................6.15..................................
[[EndImageComments]]
[[ContentSequence]]
# Request
MRI: Knee
# History
16 year old with right knee pain after an injury playing basketball.
# Findings
# Finding
......
..................................

.

..

.

There is bruising of the medial femoral condyle with some intrasubstance injury to the medial collateral ligament. The lateral collateral ligament in intact. The Baker's  cruciate ligament is irregular and slightly lax suggesting a partial tear. It does not appear to be completely torn. The posterior cruciate ligament is intact. The suprapatellar tendons are normal.
# Finding
There is a tear of the posterior limb of the medial meniscus which communicates with the superior articular surface. The lateral meniscus is intact. There is a Baker's cyst and moderate joint effusion.
# Finding
Internal derangement of the right knee with marked injury and with partial tear of the ACL; there is a tear of the posterior limb of the medial meniscus. There is a Baker's Cyst and joint effusion and intrasubstance injury to the medial collateral ligament.
# Best illustration of finding
[[EndContentSequence]]
"""

    # This is report10html.dcm converted using dcm2json|dicom_tag_string_replace.py
    report10htmljson="""{
  "InstanceCreationDate": {"vr": "DA", "Value": ["20050530" ] },
  "InstanceCreationTime": {"vr": "TM", "Value": ["160527" ] },
  "InstanceCreatorUID": {"vr": "UI", "Value": ["1.2.276.0.7230010.3.0.3.5.3" ] },
  "SOPClassUID": {"vr": "UI", "Value": ["1.2.840.10008.5.1.4.1.1.88.11" ] },
  "SOPInstanceUID": {"vr": "UI", "Value": ["1.2.276.0.7230010.3.1.4.1787205428.166.1117461927.60" ] },
  "StudyDate": {"vr": "DA" },
  "ContentDate": {"vr": "DA", "Value": ["20050530" ] },
  "StudyTime": {"vr": "TM" },
  "ContentTime": {"vr": "TM", "Value": ["160527" ] },
  "AccessionNumber": {"vr": "SH" },
  "Modality": {"vr": "CS", "Value": ["SR" ] },
  "Manufacturer": {"vr": "LO" },
  "ReferringPhysicianName": {"vr": "PN" },
  "CodingSchemeIdentificationSequence": {"vr": "SQ", "Value": [ {
        "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
        "CodingSchemeUID": {"vr": "UI", "Value": ["1.2.276.0.7230010.3.0.0.1" ] },
        "CodingSchemeName": {"vr": "ST", "Value": ["OFFIS DCMTK Coding Scheme" ] },
        "CodingSchemeResponsibleOrganization": {"vr": "ST", "Value": ["Kuratorium OFFIS e.V., Escherweg 2, 26121 Oldenburg, Germany" ] } } ] },
  "StudyDescription": {"vr": "LO", "Value": ["OFFIS Structured Reporting Samples" ] },
  "SeriesDescription": {"vr": "LO", "Value": ["RSNA '95, Picker, MR" ] },
  "ReferencedPerformedProcedureStepSequence": {"vr": "SQ" },
  "PatientName": {"vr": "PN", "Value": [{"Alphabetic": "Walz^John^R" } ] },
  "PatientID": {"vr": "LO", "Value": ["PIKR752962" ] },
  "PatientBirthDate": {"vr": "DA", "Value": ["19781024" ] },
  "PatientSex": {"vr": "CS", "Value": ["M" ] },
  "StudyInstanceUID": {"vr": "UI", "Value": ["2.16.840.1.113662.4.8796818069641.798806497.93296077602350.10" ] },
  "SeriesInstanceUID": {"vr": "UI", "Value": ["1.2.276.0.7230010.3.1.3.1787205428.166.1117461927.61" ] },
  "StudyID": {"vr": "SH" },
  "SeriesNumber": {"vr": "IS", "Value": [1 ] },
  "InstanceNumber": {"vr": "IS", "Value": [1 ] },
  "ValueType": {"vr": "CS", "Value": ["CONTAINER" ] },
  "ConceptNameCodeSequence": {
    "vr": "SQ",
    "Value": [
      {
        "CodeValue": {"vr": "SH", "Value": ["DT.05" ] },
        "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
        "CodeMeaning": {"vr": "LO", "Value": ["MR Report" ] }
      }
    ]
  },
  "ContinuityOfContent": {"vr": "CS", "Value": ["SEPARATE" ] },
  "PerformedProcedureCodeSequence": {"vr": "SQ" },
  "CurrentRequestedProcedureEvidenceSequence": {
    "vr": "SQ",
    "Value": [
      {
        "ReferencedSeriesSequence": {
          "vr": "SQ",
          "Value": [
            {
              "ReferencedSOPSequence": {
                "vr": "SQ",
                "Value": [
                  {
                    "ReferencedSOPClassUID": {"vr": "UI", "Value": ["1.2.840.10008.5.1.4.1.1.4" ] },
                    "ReferencedSOPInstanceUID": {"vr": "UI", "Value": ["2.16.840.1.113662.4.8796818069641.806010667.274350678564784069" ] }
                  }
                ]
              },
              "SeriesInstanceUID": {"vr": "UI", "Value": ["2.16.840.1.113662.4.8796818069641.806010667.284225018829304176" ] }
            }
          ]
        },
        "StudyInstanceUID": {"vr": "UI", "Value": ["2.16.840.1.113662.4.8796818069641.798806497.93296077602350.10" ] }
      }
    ]
  },
  "CompletionFlag": {"vr": "CS", "Value": ["PARTIAL" ] },
  "VerificationFlag": {"vr": "CS", "Value": ["UNVERIFIED" ] },
  "ContentSequence": {
    "vr": "SQ",
    "Value": [
      {
        "RelationshipType": {"vr": "CS", "Value": ["CONTAINS" ] },
        "ValueType": {"vr": "CS", "Value": ["TEXT" ] },
        "ConceptNameCodeSequence": {
          "vr": "SQ",
          "Value": [
            {
              "CodeValue": {"vr": "SH", "Value": ["RE.02" ] },
              "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
              "CodeMeaning": {"vr": "LO", "Value": ["Request" ] }
            }
          ]
        },
        "TextValue": {"vr": "UT", "Value": ["MRI: Knee" ] }
      },
      {
        "RelationshipType": {"vr": "CS", "Value": ["CONTAINS" ] },
        "ValueType": {"vr": "CS", "Value": ["TEXT" ] },
        "ConceptNameCodeSequence": {
          "vr": "SQ",
          "Value": [
            {
              "CodeValue": {"vr": "SH", "Value": ["RE.01" ] },
              "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
              "CodeMeaning": {"vr": "LO", "Value": ["History" ] }
            }
          ]
        },
        "TextValue": {"vr": "UT", "Value": ["16 year old with right knee pain after an injury playing basketball." ] }
      },
      {
        "RelationshipType": {"vr": "CS", "Value": ["CONTAINS" ] },
        "ValueType": {"vr": "CS", "Value": ["CONTAINER" ] },
        "ConceptNameCodeSequence": {
          "vr": "SQ",
          "Value": [
            {
              "CodeValue": {"vr": "SH", "Value": ["SH.06" ] },
              "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
              "CodeMeaning": {"vr": "LO", "Value": ["Findings" ] }
            }
          ]
        },
        "ContinuityOfContent": {"vr": "CS", "Value": ["SEPARATE" ] },
        "ContentSequence": {
          "vr": "SQ",
          "Value": [
            {
              "RelationshipType": {"vr": "CS", "Value": ["CONTAINS" ] },
              "ValueType": {"vr": "CS", "Value": ["TEXT" ] },
              "ConceptNameCodeSequence": {
                "vr": "SQ",
                "Value": [
                  {
                    "CodeValue": {"vr": "SH", "Value": ["RE.05" ] },
                    "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
                    "CodeMeaning": {"vr": "LO", "Value": ["Finding" ] }
                  }
                ]
              },
              "TextValue": {"vr": "UT", "Value": ["<html>\\n<style>\\nP { color: red; }\\n</style>\\n<P><BR><P>\\nThere is bruising of the medial femoral condyle with some intrasubstance injury to the medial collateral ligament. The lateral collateral ligament in intact. The Baker's  cruciate ligament is irregular and slightly lax suggesting a partial tear. It does not appear to be completely torn. The posterior cruciate ligament is intact. The suprapatellar tendons are normal." ] }
            },
            {
              "RelationshipType": {"vr": "CS", "Value": ["CONTAINS" ] },
              "ValueType": {"vr": "CS", "Value": ["TEXT" ] },
              "ConceptNameCodeSequence": {
                "vr": "SQ",
                "Value": [
                  {
                    "CodeValue": {"vr": "SH", "Value": ["RE.05" ] },
                    "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
                    "CodeMeaning": {"vr": "LO", "Value": ["Finding" ] }
                  }
                ]
              },
              "TextValue": {"vr": "UT", "Value": ["There is a tear of the posterior limb of the medial meniscus which communicates with the superior articular surface. The lateral meniscus is intact. There is a Baker's cyst and moderate joint effusion." ] }
            },
            {
              "RelationshipType": {"vr": "CS", "Value": ["CONTAINS" ] },
              "ValueType": {"vr": "CS", "Value": ["TEXT" ] },
              "ConceptNameCodeSequence": {
                "vr": "SQ",
                "Value": [
                  {
                    "CodeValue": {"vr": "SH", "Value": ["RE.05" ] },
                    "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
                    "CodeMeaning": {"vr": "LO", "Value": ["Finding" ] }
                  }
                ]
              },
              "TextValue": {"vr": "UT", "Value": ["Internal derangement of the right knee with marked injury and with partial tear of the ACL; there is a tear of the posterior limb of the medial meniscus. There is a Baker's Cyst and joint effusion and intrasubstance injury to the medial collateral ligament." ] }
            }
          ]
        }
      },
      {
        "ReferencedSOPSequence": {
          "vr": "SQ",
          "Value": [
            {
              "ReferencedSOPClassUID": {"vr": "UI", "Value": ["1.2.840.10008.5.1.4.1.1.4" ] },
              "ReferencedSOPInstanceUID": {"vr": "UI", "Value": ["2.16.840.1.113662.4.8796818069641.806010667.274350678564784069" ] }
            }
          ]
        },
        "RelationshipType": {"vr": "CS", "Value": ["CONTAINS" ] },
        "ValueType": {"vr": "CS", "Value": ["IMAGE" ] },
        "ConceptNameCodeSequence": {
          "vr": "SQ",
          "Value": [
            {
              "CodeValue": {"vr": "SH", "Value": ["IR.02" ] },
              "CodingSchemeDesignator": {"vr": "SH", "Value": ["99_OFFIS_DCMTK" ] },
              "CodeMeaning": {"vr": "LO", "Value": ["Best illustration of finding" ] }
            }
          ]
        }
      }
    ]
  },
  "ImageComments": { "vr": "LT", "Value": [ "<DXA_RESULTS><EXAM_DATE time=\\"14:16:15\\" id=\\"82\\">19/02/2018</EXAM_DATE><SCAN type=\\"DualFemur\\" id=\\"19\\"><ROI region=\\"Neck Left\\" id=\\"0\\"><BMD units=\\" g/cm2\\" id=\\"3\\">0.826</BMD><BMD_PYA units=\\"%\\" id=\\"7\\">80</BMD_PYA><BMD_TSCORE id=\\"6\\">-1.5</BMD_TSCORE><BMD_PAM units=\\"%\\" id=\\"9\\">114</BMD_PAM><BMD_ZSCORE id=\\"8\\">0.7</BMD_ZSCORE><BMC units=\\" g\\" id=\\"5\\">5.08</BMC><AREA units=\\" cm2\\" id=\\"2\\">6.15</AREA></ROI></SCAN></DXA_RESULTS>" ]}
}
"""

    # Create a fake temporary DICOM file from the JSON
    with tempfile.NamedTemporaryFile() as fd:
        dcm = fd.name
        # Convert the JSON into a pydicom Dataset
        ds = pydicom.dataset.Dataset.from_json(report10htmljson)
        # Save the Dataset into a temporary file
        ds.file_meta = pydicom.dataset.FileMetaDataset()
        ds.file_meta.TransferSyntaxUID = '1.2.840.10008.1.2.1'
        ds.save_as(dcm, write_like_original=False)#, enforce_file_format=True)

        # Parse with the normal header tags included
        dt = DicomText(dcm)
        dt.parse()
        assert(dt.text() == expected_with_header)

        # Parse without including the header tags
        dt = DicomText(dcm, include_header = False)
        dt.parse()
        assert(dt.text() == expected_without_header)

        # Parse without including the header tags
        dt = DicomText(dcm, include_header = False, replace_HTML_entities = False)
        dt.parse()
        assert(dt.text() == expected_without_header_with_html)

        # Parse with the normal header tags included - and enable ImageComments
        dt = DicomText(dcm)
        dt.enableTag('ImageComments')
        dt.parse()
        assert(dt.text() == expected_with_header_and_imagecomments)
