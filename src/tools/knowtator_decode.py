#!/usr/bin/env python3
# Decode the knowtator.xml file output by SemEHR
# Usage: knowtator_decode.py file.xml...
import sys
import xml.etree.ElementTree

from SmiServices import Knowtator

for xmlfile in sys.argv[1:]:
	xmlroot = xml.etree.ElementTree.parse(xmlfile).getroot()
	xmldictlist = Knowtator.annotation_xml_to_dict(xmlroot)
	for xmlitem in xmldictlist:
		if xmlitem['text']:
			print(xmlitem)
