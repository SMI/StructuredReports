#!/usr/bin/env python3
# Anonymise a text file or a directory of text files
# Usage: semehr_anon.sh -i input_dir -o output_dir
#    or: semehr_anon.sh -i input_file -o output_file
#          -s path to the parent of CogStack-SemEHR dir.
#          --spacy to use SpaCy named entity recogniser.
#          --xml to write .knowtator.xml files.
# NOTE: it only writes output if input contained PII,
# so use the -a (--all) option to write all the others too.
# To anonymise *DICOM* files you need CTP_SRAnonTool.sh
# (which uses CTP_DicomToText, this script, and CTP_XMLToDicom).
# NOTE: this script has supersceded semehr_anon.sh.
import argparse
import glob
import json
import logging
import os
import re
import shutil # for copyfile
import subprocess # for run
import sys
import tempfile # for TemporaryDirectory
from logging import handlers

from SemEHR.anonymiser import do_anonymisation_by_conf
from SmiServices import Knowtator

# Configuration
use_spacy = False
empty_knowtator_xml_document_string = '<?xml version="1.0" ?>\n<annotations>\n</annotations>\n'


def anonymise_dir(input_dir, output_dir, semehr_anon_cfg_file, write_xml = False, write_all = False):

    input_dir = os.path.abspath(input_dir)
    output_dir = os.path.abspath(output_dir)

    phi_file = os.path.join(output_dir, 'anonymiser.phi')

    # Create a config file in the output directory
    with open(semehr_anon_cfg_file) as fd:
        cfg_json = json.load(fd)
    cfg_json['text_data_path'] = input_dir
    cfg_json['anonymisation_output'] = output_dir
    cfg_json['extracted_phi'] = phi_file
    cfg_json['grouped_phi_output'] = '/dev/null'
    if 'logging_file' in cfg_json:
        del cfg_json['logging_file']
    cfg_json['annotation_mode'] = False
    #cfg_json['number_threads'] = 0  # a bug in CPython causes hang/deadlock trying to acquire lock in logging __init__.py ?
    cfg_json['use_spacy'] = use_spacy

    # Run SemEHR anonymiser
    logging.info('Running anonymiser from %s to %s' % (input_dir, output_dir))
    try:
        do_anonymisation_by_conf(cfg_json)
    except Exception as e:
        raise e
        logging.error('ERROR: SemEHR anonymiser failed')

    # Read the JSON file "phi" to redact the words
    with open(phi_file) as fd:
        phi_json = json.load(fd)

    # Collect the set of document names
    # Can either use the list of input files (if you want every input file to have an output file)
    # or the list of documents which were redacted (if you don't want failed docs in the output dir)
    list_of_docs = set([ii['doc'] for ii in phi_json]) # list of anonymised documents
    if write_xml or write_all:
        # next(walk) returns info about current directory (not subdirectories)
        # then [2] returns just the list of filenames (not path or directories)
        list_of_docs = sorted(next(os.walk(input_dir))[2])     # list of original filenames
    logging.info('Redacting %d files in %s' % (len(list_of_docs), output_dir))

    # For each document, reads the output document and fully anonymise it using the 'phi' file
    # (The output document is almost anonymised but not necessarily fully as extra annotations are in the phi file.
    # Compared to the input document, the output document also has had the headers removed).
    for doc in list_of_docs:
        renamed_dict = [{'start_char':ii['start'], 'end_char':ii['start']+len(ii['sent']), 'text':ii['sent']} for ii in phi_json if ii['doc'] == doc]
        renamed_dict = sorted(renamed_dict, key = lambda x: x['start_char'])
        xml_string = Knowtator.dict_to_annotation_xml_string(renamed_dict) if len(renamed_dict) else empty_knowtator_xml_document_string

        # If there's no record of doc in phi then it wasn't anonymised
        # so we can either copy it (might contain PII!) or create an empty one from /dev/null
        input_file = os.path.join(output_dir, doc)
        with open(input_file, 'r') as fd:
            text = fd.read()

        for annot in renamed_dict:
            if annot['end_char'] > annot['start_char']:
                text = text[:annot['start_char']] + 'X'.rjust(annot['end_char']-annot['start_char'],'X') + text[annot['end_char']:]

        output_file = os.path.join(output_dir, doc)
        logging.debug('Redacting %s' % doc)
        with open(output_file, 'w') as fd:
            fd.write(text)
        # Write the XML file
        output_file += '.knowtator.xml'
        if write_xml:
            with open(output_file, 'w') as fd:
                fd.write(xml_string)

    # Tidy up
    os.remove(phi_file)
    return


def anonymise_file(input_file, output_file, semehr_anon_cfg_file, write_xml = False, write_all = False):
    # The anonymiser works on whole directories so
    # create temporary input/output directories and copy the file there.
    input_file = os.path.abspath(input_file)
    output_file = os.path.abspath(output_file)
    input_dir = tempfile.TemporaryDirectory()
    output_dir = tempfile.TemporaryDirectory()
    shutil.copyfile(input_file, os.path.join(input_dir.name, os.path.basename(input_file)))
    anonymise_dir(
        input_dir.name, output_dir.name, semehr_anon_cfg_file,
        write_xml=write_xml, write_all=write_all,
    )
    shutil.copyfile(os.path.join(output_dir.name, os.path.basename(input_file)), output_file)
    if write_xml:
        xml_src = os.path.join(output_dir.name, os.path.basename(input_file) + '.knowtator.xml')
        xml_dest = output_file + '.knowtator.xml'
        if os.path.isfile(xml_src):
            shutil.copyfile(xml_src, xml_dest)
    input_dir.cleanup()
    output_dir.cleanup()


def main():
    global use_spacy

	# Configure logging
    if not os.environ.get('SMI_LOGS_ROOT'): raise Exception('Environment variable SMI_LOGS_ROOT must be set')
    log_dir = os.path.expandvars('$SMI_LOGS_ROOT')
    log_file = os.path.join(log_dir, os.path.basename(sys.argv[0]) + '.log')
    file_handler = logging.handlers.RotatingFileHandler(filename=log_file, maxBytes=256*1024*1024, backupCount=9)
    stdout_handler = logging.StreamHandler(sys.stdout)
    handlers = [file_handler, stdout_handler]
    logging.basicConfig(
        level=logging.DEBUG, handlers=handlers,
        format='[%(asctime)s] {%(filename)s:%(lineno)d} %(levelname)s - %(message)s',
    )

    # Parse command line arguments
    parser = argparse.ArgumentParser(description='Redact text given knowtator XML')
    parser.add_argument('-i', dest='input', action="store", required=True, help='directory of text, or filename of one text file')
    parser.add_argument('-o', dest='output', action="store", required=True, help='path to output filename or directory where redacted text files will be written')
    parser.add_argument('-x', '--xml', dest='write_xml', action="store_true", help='write knowtator.xml in output directory for all input files', default=False)
    parser.add_argument('-c', dest='semehr_anon_cfg_file', action="store", required=True, help='path to the anon config file e.g., "anonymisation_task.json"')
    parser.add_argument('--spacy', dest='spacy', action='store_true', help='use SpaCy to identify names')
    args = parser.parse_args()
    if not args.input:
        parser.print_help()
        exit(1)

    if args.spacy:
    	use_spacy = True # XXX global

    if os.path.isfile(args.input):
        anonymise_file(
            args.input, args.output, args.semehr_anon_cfg_file,
            write_xml=args.write_xml, write_all=True,
        )

    elif os.path.isdir(args.input):
        anonymise_dir(
            args.input, args.output, args.semehr_anon_cfg_file,
            write_xml=args.write_xml, write_all=True,
        )
    else:
        raise FileNotFoundError(f"Input {args.input} is not a file or a directory")


if __name__ == '__main__':
    main()
