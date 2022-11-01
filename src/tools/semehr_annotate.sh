#!/bin/bash
# Run like this:
# ./semehr_run.sh -i /home/ubuntu/SemEHR/structuredreports/src/data/mtsamples_ihi_docs/
# Usage: [-e virtualenv_path] [-s semehr_path] -i input document directory
#  -e is the path to a Python virtual environment (bin/activate inside)
#  -s is the path to SemEHR (CogStack-SemEHR, has 'installation' inside)
#  -g is the path to GCP (has bio-yodie-1-2-1, gate, gcp-2.5-18658 inside)
#  -i is the input directory
#  -o is the output directory
#
# Given an input directory of text files run SemEHR to produce annotations in JSON format.
# NOTE the text files must have .txt extension (see full_text_fn_ptn below).
#
# NOTE requires 'jq' in the PATH, and 'rsync'
# NOTE assumes that the RAM disk for the current user already exists

export semehr_path="/opt/semehr/CogStack-SemEHR" # make sure it's the "smi-branch" checked out
export gcp_path="/opt/gcp"                       # $HOME/SemEHR/gcp or /opt/gcp

prog=$(basename $0)
options="i:o:e:s:g:"
usage="usage: $prog [-e virtualenv_path] [-s semehr_path] [-g gcp_path] -i input document directory [-o output_dir]"
while getopts "$options" var; do
  case $var in
    e) VirtEnv="$OPTARG";;
    i) InputDir="$OPTARG";;
    o) OutputDir="$OPTARG";;
    s) SemEHRpath="$OPTARG";;
    g) GCPpath="$OPTARG";;
    ?) echo $usage >&2; exit 1;;
  esac
done

if [ ! -d "$InputDir" ]; then
    echo "$usage" >&2
    exit 1
fi

if [ "$OutputDir" != "" -a ! -d "$OutputDir" ]; then
	echo "$usage" >&2
	exit 1
fi

if [ -d "$VirtEnv" ]; then
	source $VirtEnv/bin/activate
fi

if [ -d "$SemEHRpath" ]; then
	export semehr_path="$SemEHRpath"
fi

if [ -d "$GCPpath" ]; then
  export gcp_path="$GCPpath"
fi

if [ ! -d "/run/user/$(id -u)" ]; then
	echo "Error: cannot access RAM disk /run/user/$(id -u)" >&2
	exit 2
fi


# ---------------------------------------------------------------------
# Input and output directories are on a RAM disk for speed
# and use the process-id to ensure unique per run.

semehr_data_dir="/run/user/$(id -u)/semehr/tmp_$(date +%H%M%S)_$$"
txt_dir="${semehr_data_dir}/txt"
output_docs_dir="${semehr_data_dir}/output_docs"
semehr_results_dir="${semehr_data_dir}/semehr_results"
log="${semehr_data_dir}/annotator.log"

mkdir -p $txt_dir  $output_docs_dir  $semehr_results_dir
touch $log


# ---------------------------------------------------------------------
# Logging functions need the $log variable and directory

message()
{
  echo "$(date) $1"
  echo "$(date) $1" >> $log
}

error_message()
{
  echo "$(date) $1" >&2
  echo "$(date) $1" >> $log
}

fatal_error()
{
  error_message "$1"
  exit 1
}

tidy_up()
{
  #echo NOT TIDYING "${semehr_data_dir}"
  #echo SEE $log
  #return
  #rm -fr "${semehr_data_dir}"
  # Keep the log file and just delete the contents
  rm -fr "${txt_dir}"
  rm -fr "${output_docs_dir}"
  rm -fr "${semehr_results_dir}"
}


# ---------------------------------------------------------------------
# Needs a python3 environment:
if [ "$VIRTUAL_ENV" == "" ]; then
	fatal_error "ERROR: must be run inside a python virtual environment"
fi


# ---------------------------------------------------------------------
# Copy the input files into the temporary input directory
message "Copying files from $InputDir TO $txt_dir"
rsync -a  "$InputDir/"  "$txt_dir"


# ---------------------------------------------------------------------
# Select Java
if [ -d /usr/lib/jvm/java-11-openjdk-amd64 ]; then export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64";
elif [ -d /usr/lib/jvm/java-11-openjdk ]; then export JAVA_HOME="/usr/lib/jvm/java-11-openjdk";
else fatal_error "ERROR: Cannot find Java-11"; fi


# ---------------------------------------------------------------------
# Run SemEHR annotator
message "Annotating text ..."
export semehr_conf_template="${semehr_path}/installation/semehr_conf_template.json"
export GCP_HOME="$gcp_path/gcp-2.5-18658"
export GATE_HOME="$gcp_path/gate"
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF8"
export CLASSPATH="$GATE_HOME/bin"
export PATH="$PATH:$GCP_HOME:$GATE_HOME/bin:${semehr_path}:/opt/semehr"

export YODIE_ROOT="$gcp_path"                             # expects bio-yodie-1-2-1 in here
export UKB_PATH="$gcp_path/ukb"                           # we don't have this
export YODI_XML="${semehr_data_dir}/yodi.xml"             # this should be created automatically
export STUDY_PATH="$semehr_path/data/study"               # we don't have this
export STUDY_CONFIG="$STUDY_PATH/sample_rule_config.json" # we don't have this
export JOB_STATUS_PATH="${semehr_data_dir}"

# Create a private config file
# NOTE could also change populate_cohort_result.output_folder
# NOTE output_fn_pattern not in template
# NOTE java_home not in template
# NOTE to include a study use '.doc_ann_analysis.study_folder = "'"${STUDY_PATH}"'"|'\
#      and '.doc_ann_analysis.rule_config_path = "'"${STUDY_CONFIG}"'"|'\
# NOTE we have changed full_text_fn_ptn from %s.txt to %s so orig docs don't need .txt extension
input_docs_dir="${txt_dir}"
jq < $semehr_conf_template > $semehr_data_dir/semehr_settings.json \
'.env.java_home = "'"${JAVA_HOME}"'"|'\
'.env.gcp_home = "'"${GCP_HOME}"'"|'\
'.env.gate_home = "'"${GATE_HOME}"'"|'\
'.env.yodie_path = "'"${YODIE_ROOT}"'"|'\
'.env.ukb_home = "'"${UKB_PATH}"'"|'\
'.env.semehr_path = "'"${semehr_path}"'"|'\
'.yodie.gcp_run_path = "'"${YODIE_ROOT}"'"|'\
'.yodie.input_doc_file_path = "'"${input_docs_dir}"'"|'\
'.yodie.config_xml_path = "'"${YODI_XML}"'"|'\
'.yodie.output_file_path = "'"${output_docs_dir}"'"|'\
'.yodie.memory = "8192M"|'\
'.yodie.thread_num = "20"|'\
'.doc_ann_analysis.ann_docs_path = "'"${output_docs_dir}"'"|'\
'.doc_ann_analysis.output_fn_pattern = "%s.json"|'\
'.doc_ann_analysis.full_text_fn_ptn = "%s.txt"|'\
'.doc_ann_analysis.full_text_folder = "'"${input_docs_dir}"'"|'\
'.doc_ann_analysis.output_folder = "'"${semehr_results_dir}"'"|'\
'del(.doc_ann_analysis.rule_config_path) |'\
'del(.doc_ann_analysis.study_folder) |'\
'.logging.file = "'"${log}"'"|'\
'.job.job_status_file_path = "'"${JOB_STATUS_PATH}"'"'

# Needs to be in the SemEHR directory:
(cd $semehr_path
    python3 "$semehr_path/semehr_processor.py" "$semehr_data_dir/semehr_settings.json"
)  >> $log 2>&1
rc=$?

# ---------------------------------------------------------------------
# Copy to output directory
if [ "$OutputDir" != "" ]; then
	rsync -a  "$semehr_results_dir/"  "$OutputDir"
	rc=$((rc|$?))
fi


# ---------------------------------------------------------------------
# Tidy up our private temporary directory
message "Removing ${semehr_data_dir} ..."
tidy_up

message "Done"
exit $rc
