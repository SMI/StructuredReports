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
    else:
        orig_string = ann['str']
        semantic_type = ann['sty']
    print('[%s = %s]' % (orig_string, semantic_type), end='', file=fd)


def insert_text(fd, s):
    print(s, end='', file=fd)

# ---------------------------------------------------------------------

def convert(txtfile, jsonfile, outfile):
    """ Convert the txtfile with annotations in jsonfile into the outfile
    """

    # Read the whole text file in as a single string
    with open(txtfile) as fd:
        txt = fd.read()

    # Read all the annotations into a dict
    with open(jsonfile) as fd:
        anns = json.load(fd)

    # Create the HTML file and write the header with CSS style definitions
    print('INFO: writing %s' % outfile)
    fd = open(outfile, 'w')

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


# ---------------------------------------------------------------------

parser = argparse.ArgumentParser(description='Convert annotations in JSON into plain text')
parser.add_argument('-t', dest='txt', action="store", help='text file')
parser.add_argument('-j', dest='json', action="store", help='json file')
parser.add_argument('-o', dest='out', action="store", help='output file')
parser.add_argument('txtfiles', nargs=argparse.REMAINDER)
args = parser.parse_args()

if args.txt:
    outfile = args.out if args.out else args.txt.replace('.txt', '') + '.out.txt'
    convert(args.txt, args.json, outfile)
elif args.txtfiles:
    for txtfile in args.txtfiles:
        jsonfile = txtfile.replace('.txt', '') + '.json'
        outfile = txtfile.replace('.txt', '') + '.out.txt'
        convert(txtfile, jsonfile, outfile)
else:
    print('ERROR: must specify -t or give a list of text files')
    exit(1)

