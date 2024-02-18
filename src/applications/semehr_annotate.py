#!/usr/bin/env python3
# Given an input directory of text files run SemEHR to produce annotations in JSON format.
# NOTE the text files must have .txt extension (see full_text_fn_ptn below).
# Requires:
#  config file template in /opt/semehr/CoGStack-SemEHR/data/semehr_processor.json
#  /opt/gcp,gcp/gate/bioyodie which requires java
#  RAM disk in /run/user/$id

import argparse
import datetime
from inspect import signature
import json
import logging
import os
import pprint
import shutil
import sys
from SemEHR.semehr_processor import process_semehr

# Configuration
semehr_conf_file='/opt/semehr/CogStack-SemEHR/data/semehr_processor.json'
semehr_path=None
gcp_path=None
keep_tmp=False

# User-specified options
input_docs_dir = None
output_docs_dir = None

# Global variables
copytree_can_ignore_dirs = 'dirs_exist_ok' in [x.name for x in signature(shutil.copytree).parameters.values()]

# Configure logging before doing anything
logger = logging.getLogger(__name__)


def find_java11():
    """ Find java-11 specifically (might be the required version for yodie?)
    """
    if os.path.isdir('/usr/lib/jvm/java-11-openjdk-amd64'):
        JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
    elif os.path.isdir('/usr/lib/jvm/java-11-openjdk'):
        JAVA_HOME="/usr/lib/jvm/java-11-openjdk"
    else:
        logger.error("Cannot find Java-11")
        JAVA_HOME = None
    logging.debug('Found java11 in %s' % JAVA_HOME)
    return JAVA_HOME

# Parse command line arguments
parser = argparse.ArgumentParser(description = 'SemEHR Annotator')
parser.add_argument('-i', '--input', action='store', required=True, help='input directory')
parser.add_argument('-o', '--output', action='store', required=True, help='output directory')
parser.add_argument('-c', '--conf', action='store', help='path to semehr_processor.json filename')
parser.add_argument('-s', '--semehr', action='store', help='CogStack-SemEHR directory path')
parser.add_argument('-g', '--gcp', action='store', help='GCP directory path (contains bio-yodie-1-2-1, gate, gcp-2.5-18658)')
parser.add_argument('-d', '--debug', action='store_true', help='debug')
args = parser.parse_args()

if args.debug:
    logging.basicConfig(level = logging.DEBUG)
else:
    logging.basicConfig(level = logging.INFO)
if args.input:
    input_docs_dir = args.input
if args.output:
    output_docs_dir = args.output
if args.gcp:
    gcp_path = args.gcp
if args.semehr:
    semehr_path = args.semehr
if args.conf:
    semehr_conf_file = args.conf

# semehr_path is expected to be found from the config file,
# if you changed semehr_path but not semehr_conf_file then look for it there
if not os.path.isfile(semehr_conf_file):
    semehr_conf_file=os.path.join(semehr_path, "data", "semehr_processor.json")

# Read the config file
logging.debug('Reading %s' % semehr_conf_file)
conf = {}
with open(semehr_conf_file) as fd:
  conf = json.load(fd)

# If semehr_path given on command line then update config
if semehr_path:
    conf['env']['semehr_path'] = semehr_path
else:
    semehr_path = conf['env']['semehr_path']

# Check the location of semehr_path
if not os.path.isdir(semehr_path):
    semehr_path = "/opt/semehr/CogStack-SemEHR"
    if not os.path.isdir(semehr_path):
        semehr_path = os.path.join(os.environ['HOME'], "src/SMI/CogStack-SemEHR")
if not os.path.isdir(semehr_path):
    raise Exception("cannot find SemEHR")
conf['env']['semehr_path'] = semehr_path
logging.debug('semehr_path %s' % semehr_path)

# If gcp_path given on command line then update config
if gcp_path:
    conf['env']['classpath'] = gcp_path + "/gate/bin"
    conf['env']['gcp_home'] = gcp_path + "/gcp-2.5-18658"
    conf['env']['gate_home'] = gcp_path + "/gate"
    conf['env']['yodie_path'] = gcp_path + "/"
    conf['env']['ukb_home'] = gcp_path + "/ukb"
    conf['yodie']['gcp_run_path'] = gcp_path

# Construct a temporary directory hierarchy inside a RAM disk
today = datetime.datetime.now().strftime('%Y%m%d')
semehr_data_dir = "/run/user/%s/semehr/tmp_%s_%s" % (os.getuid(), today, os.getpid())
txt_dir = os.path.join(semehr_data_dir, "txt")
output_dir = os.path.join(semehr_data_dir, "output_docs")
semehr_results_dir = os.path.join(semehr_data_dir, "semehr_results")
log = os.path.join(semehr_data_dir, "annotator.log")

logging.debug('temporary files in %s' % semehr_data_dir)
os.makedirs(semehr_data_dir, exist_ok = True)
os.makedirs(output_dir, exist_ok = True)
os.makedirs(semehr_results_dir, exist_ok = True)
if copytree_can_ignore_dirs:
    os.makedirs(txt_dir, exist_ok = True)
else:
    logging.warning('renaming existing %s' % output_docs_dir)
    if os.path.isdir(output_docs_dir):
        os.rename(output_docs_dir, output_docs_dir.rstrip('/')+datetime.datetime.now().strftime('%H%M%S'))

# ---------------------------------------------------------------------
def tidy():
    if keep_tmp:
        logging.info('temporary files are kept in %s' % semehr_data_dir)
        return
    # We could delete everything:
    #shutil.rmtree(semehr_data_dir, ignore_errors=True)
    # but instead just delete the data files and keep the logs:
    shutil.rmtree(txt_dir, ignore_errors=True)
    shutil.rmtree(output_dir, ignore_errors=True)
    shutil.rmtree(semehr_results_dir, ignore_errors=True)

# ---------------------------------------------------------------------
# If we find a valid Java then override config
j11 = find_java11()
if j11:
    conf['env']['java_home'] = j11

# ---------------------------------------------------------------------
# Update the environment for sub-processes
os.environ['GCP_HOME'] = conf['env']['gcp_home']
os.environ['GATE_HOME'] = conf['env']['gate_home']
os.environ['JAVA_HOME'] = conf['env']['java_home']
os.environ['JAVA_TOOL_OPTIONS'] = conf['env']['java_tool_options']
os.environ['CLASSPATH'] = conf['env']['classpath']

# Update the $PATH
os.environ['PATH'] = os.environ['PATH'] + \
    ':'+os.environ['GCP_HOME'] + \
    ':'+os.environ['GATE_HOME']+'/bin'

# ---------------------------------------------------------------------
# NOTE to include a study use doc_ann_analysis.study_folder = ${STUDY_PATH}
#      and doc_ann_analysis.rule_config_path = ${STUDY_CONFIG}

conf['yodie']['input_doc_file_path'] = os.path.abspath(txt_dir)
conf['yodie']['config_xml_path'] = os.path.abspath(os.path.join(semehr_data_dir, "yodi.xml")) # this should be created automatically
conf['yodie']['output_file_path'] = os.path.abspath(output_dir)

# Update config file with custom directories
conf['job']['job_status_file_path'] = os.path.abspath(semehr_data_dir)
conf['doc_ann_analysis']['ann_docs_path'] = os.path.abspath(output_dir)
conf['doc_ann_analysis']['full_text_folder'] = os.path.abspath(txt_dir)
conf['doc_ann_analysis']['output_folder'] = os.path.abspath(semehr_results_dir)
# Delete unused config
del conf['doc_ann_analysis']['rule_config_path']
del conf['doc_ann_analysis']['study_folder']

# Turn off its logging since we control logging now
if 'logging' in conf and 'file' in conf['logging']:
    del conf['logging']['file']

#logger.debug('Final conf: %s' % conf)
#pprint.pprint('Final conf: %s' % conf)

# ---------------------------------------------------------------------
# Copy the input documents into the working space (RAM disk)
logger.debug('Copy from %s to %s' % (input_docs_dir, txt_dir))
if copytree_can_ignore_dirs:
    shutil.copytree(input_docs_dir, txt_dir, dirs_exist_ok=True)
else:
    shutil.copytree(input_docs_dir, txt_dir)

# ---------------------------------------------------------------------
# Run the annotation code
# XXX do we need to chdir into semehr directory??
logger.debug('Annotating...')
current_dir = os.getcwd()
process_semehr(conf)
os.chdir(current_dir)

# ---------------------------------------------------------------------
# Copy the output documents from the working space back to the user dir,
# could copy the fully-featured files in output_dir, but instead prefer
# the annotations only from semehr_dir.
logger.debug('Copy from %s to %s' % (semehr_results_dir, output_docs_dir))
if copytree_can_ignore_dirs:
    shutil.copytree(semehr_results_dir, output_docs_dir, dirs_exist_ok=True)
else:
    shutil.copytree(semehr_results_dir, output_docs_dir)

# ---------------------------------------------------------------------
tidy()
