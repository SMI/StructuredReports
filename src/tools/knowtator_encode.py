#!/usr/bin/env python3
# Encode the semehr_results output as a knowtator.xml file.
# Usage: knowtator_encode.py -o output_dir -i file.json...
#  use --anonymise to change annotation class to semehr_sensitive_info
#  use --annotate to change annotation class to annotation_correct
#  otherwise annotation class is "pref(cui)"
# Assumes the JSON files xxx.json refer to text files xxx.txt
# so when changing the filename it replaces .json with .txt.knowtator.xml
# The resulting XML files have annotation span (start,end chars)
# and spanned text, and a class which is the "pref(cui)" text.
import argparse
import json
import os
import sys
import xml.etree.ElementTree

from SmiServices import Knowtator

parser = argparse.ArgumentParser(description='Convert semehr_results JSON to eHOST knowtator.xml')
parser.add_argument('-o', dest='output', action="store", help="output directory")
parser.add_argument('--anonymise', dest='anon', action="store_true", help="annotation class restricted to 'sensitive_info'", default=False)
parser.add_argument('--annotate', dest='ann', action="store_true", help="annotation class restricted to 'annotation_correct'", default=False)
parser.add_argument('-i', dest='input', nargs='*', required=True, default=[], help='input semehr_results JSON filenames') # can use: -i *.txt
args = parser.parse_args()

output_dir=None
if args.output:
    output_dir = args.output

for json_file in args.input:
    with open(json_file) as json_fd:
        xml_file = json_file.replace('.json', '.txt.knowtator.xml')
        if output_dir:
            xml_file = os.path.join(output_dir, os.path.basename(xml_file))
        with open(xml_file, 'w') as xml_fd:
            jj = json.load(json_fd)
            renamed_dict = [ {
                'start_char': ii['start'],
                'end_char': ii['start']+len(ii['str']),
                'text': ii['str'],
                'pref': ii['pref'],
                'cui':  ii['cui']
                } for ii in jj['annotations']]
            xml_string = Knowtator.dict_to_annotation_xml_string(renamed_dict, anonymise=args.anon, annotate=args.ann)
            print(xml_string, file=xml_fd)
