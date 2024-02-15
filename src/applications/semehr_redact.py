#!/usr/bin/env python3
# Redact a txt file using the information from a Knowtator-format XML file.
# Can redact a directory of txt files.
# Deduces the XML filename by appending .knowtator.xml (or replacing .txt).
# Output goes to the same file or to a given directory.
import argparse
import glob
import logging
import os
import re
import sys
import xml.etree.ElementTree

from SmiServices import Knowtator


def redact_txt_file(txtfile, xmlfile, outputfile):
    if not os.path.isfile(xmlfile):
        print('ERROR: no such file %s' % xmlfile, file=sys.stderr)
        return
    tree = xml.etree.ElementTree.parse(xmlfile)
    xmlroot = tree.getroot()
    xmldictlist = Knowtator.annotation_xml_to_dict(xmlroot)

    with open(txtfile, 'r') as fd:
        text = fd.read()

    for annot in xmldictlist:
        text = text[:annot['start_char']] + 'X'.rjust(annot['end_char']-annot['start_char'],'X') + text[annot['end_char']:]

    with open(outputfile, 'w') as fd:
        fd.write(text)

    return text


def find_xml_file(txtfile):
    xmlfile = txtfile.replace('.txt', '.knowtator.xml')
    if xmlfile != txtfile and os.path.isfile(xmlfile): return xmlfile
    xmlfile = txtfile + '.knowtator.xml'
    if os.path.isfile(xmlfile): return xmlfile
    #print('WARNING: cannot find xml file for %s' % txtfile)
    return None


def find_output_filename(txtfile, output_dir):
    """ Use the same filename as txtfile but in the output_dir directory.
    If no output_dir is given then overwrite the input file.
    """
    if not output_dir:
        return txtfile
    outputfile = os.path.join(output_dir, os.path.basename(txtfile))
    return outputfile


def main():
    # Parse command line arguments
    parser = argparse.ArgumentParser(description='Redact text given knowtator XML')
    #parser.add_argument('-y', dest='yamlfile', action="append", help='path to yaml config file (can be used more than once)')
    parser.add_argument('-i', dest='input', action="store", help='directory of .txt & .knowtator.xml files, or filename of one .txt file')
    parser.add_argument('-o', dest='output_dir', action="store", help='path to directory where redacted text files will be written')
    parser.add_argument('txtfiles', nargs=argparse.REMAINDER)
    args = parser.parse_args()
    if not args.input and not args.txtfiles:
        parser.print_help()
        exit(1)

    if args.input and os.path.isfile(args.input):
        redact_txt_file(args.input, find_xml_file(args.input), find_output_filename(args.input, args.output_dir))
    if args.input and os.path.isdir(args.input):
        for txtfile in glob.glob(os.path.join(args.input, '*')):
            xml_file = find_xml_file(txtfile)
            if xml_file:
                redact_txt_file(txtfile, xml_file, find_output_filename(txtfile, args.output_dir))
    for txtfile in args.txtfiles:
        redact_txt_file(txtfile, find_xml_file(txtfile), find_output_filename(txtfile, args.output_dir))


if __name__ == '__main__':
    main()
