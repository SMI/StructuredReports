#!/usr/bin/env python3

# Create a HTML file to mark up a text file with annotations taken from a JSON file.
# The JSON file must be a dict with an "annotations" key, being an array of annotation dicts
# each of which has "start", "end" (character offsets in text file),
# "str" (original string), "sty" (semantic type).
# The HTML will have tool-tip text describing each word.
# The hover section has to be a single box (not the original word)
# because there might be overlapping and nested regions.
# Usage:  ann_to_html.py  *.txt   -- assumes the json files have a .json extension
# Usage:  ann_to_html.py -t file.txt -j file.json -o file.html

import argparse
import json
import sys
import argparse

HTML_header = """<html><head><style>
/* Tooltip container */
.tooltip {
  position: relative;
  display: inline-block;
  border: 1px solid black;
  background-color: lightgray;
  xxxborder-bottom: 1px dotted black; /* If you want dots under the hoverable text */
}

/* Tooltip text */
.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: lightgray;
  color: black;
  text-align: center;
  padding: 5px 0;
  border-radius: 6px;
  /* Position the tooltip text */
  position: absolute;
  z-index: 1;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
}
</style></head><body><p>
"""
HTML_footer = '</p></body></html>'

# ---------------------------------------------------------------------

def insert_tooltip(fd, ann):
    """ Creates a tooltip describing the text as the semantic type.
    Handles both types of annotation:
      "features": { "string_orig": "the text", "STY": "the semantic type" }
    or
      "str": "the text", "sty": "the semantic type"
    """
    if 'features' in ann:
        orig_string = ann['features']['string_orig']
        semantic_type = ann['features']['STY']
        negation = ann['features']['Negation']
    else:
        orig_string = ann['str']
        semantic_type = ann['sty']
        negation = ann['negation']
    print('<span class="tooltip">&nbsp;<span class="tooltiptext">%s = %s (%s)</span></span>' % (orig_string, semantic_type, negation), end='', file=fd)


def insert_text(fd, s):
    print(s, end='', file=fd)

# ---------------------------------------------------------------------

def convert(txtfile, jsonfile, htmlfile):
    """ Convert the txtfile with annotations in jsonfile into the htmlfile
    """

    # Read the whole text file in as a single string
    with open(txtfile) as fd:
        txt = fd.read()

    # Read all the annotations into a dict
    with open(jsonfile) as fd:
        anns = json.load(fd)

    # Create the HTML file and write the header with CSS style definitions
    print('INFO: writing %s' % htmlfile)
    fd = open(htmlfile, 'w')
    fd.write(HTML_header)

    # Both document formats are a dict with an "annotations" key
    # (other keys might exist such as docID).
    if not 'annotations' in anns:
        print('ERROR unknown input format: expected a dict with "annotations" key')
        exit(1)
    anns = anns['annotations']

    # Within the annotations we have two types of document:
    #   semehr_results has an array of { start,end,sty,str,etc } dicts
    #   output_docs    has an array of 3 elements: Mention, Phenotype, Sentence
    #     first is Mention, an array of { type: Mention, startNode {offset}, endNode {offset}, features {STY,string_orig}}

    if 'start' in anns[0]:
        # semehr_results format
        # Get only the annotations, sorted by "start" key
        anns = sorted(anns, key=lambda k: k['start'])
        # For each slice of text output the tooltip then the text
        print('INFO: input is in semehr_results format')
        for ii in range(1, len(anns)):
            start = anns[ii-1]['start']
            end   = anns[ii]['start']
            insert_tooltip(fd, anns[ii-1])
            insert_text(fd, txt[start:end])
        insert_tooltip(fd, anns[ii])
        insert_text(fd, txt[end:])
    elif 'type' in anns[0][0]:
        # output_docs format
        print('INFO: input is in output_docs format')
        # Look for the array which contains a dict having 'type'='Mention'
        anns = [x for x in anns if len(x) and x[0].get('type','') == "Mention"][0]
        # Sort by the offset in the startNode keys
        anns = sorted(anns, key=lambda k: k['startNode']['offset'])
        # For each slice of text output the tooltip then the text
        for ii in range(1, len(anns)):
            start = anns[ii-1]['startNode']['offset']
            end   = anns[ii]['startNode']['offset']
            insert_tooltip(fd, anns[ii-1])
            insert_text(fd, txt[start:end])
        insert_tooltip(fd, anns[ii])
        insert_text(fd, txt[end:])
    else:
        print('ERROR: unknown input format, neither output_docs nor semehr_results')
        exit(1)

    # Write HTML footer
    print(HTML_footer, file=fd)


# ---------------------------------------------------------------------

parser = argparse.ArgumentParser(description='Convert annotations in JSON into marked-up HTML')
parser.add_argument('-t', dest='txt', action="store", help='text file')
parser.add_argument('-j', dest='json', action="store", help='json file')
parser.add_argument('-o', dest='html', action="store", help='output html file')
parser.add_argument('txtfiles', nargs=argparse.REMAINDER)
args = parser.parse_args()

if args.txt:
    htmlfile = args.html if args.html else args.txt.replace('.txt', '') + '.html'
    convert(args.txt, args.json, htmlfile)
elif args.txtfiles:
    for txtfile in args.txtfiles:
        jsonfile = txtfile.replace('.txt', '') + '.json'
        htmlfile = txtfile.replace('.txt', '') + '.html'
        convert(txtfile, jsonfile, htmlfile)
else:
    print('ERROR: must specify -t or give a list of text files')
    exit(1)

