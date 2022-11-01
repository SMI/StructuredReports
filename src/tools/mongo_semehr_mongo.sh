#!/bin/bash

# Given a specific date YYYYMMDD convert all SRs with that StudyDate
# directly from MongoDB into an output directory, run that through the
# SemEHR anonymiser, run the anonymous text through the annotator,
# put the semehr_results into MongoDB
# XXX should also extract PatientID from filename?

# NOTE assumes that the RAM disk for the current user already exists

prog=$(basename $0)
options="d:"
usage="usage: $prog -d StudyDate in the form YYYYMMDD"
while getopts "$options" var; do
  case $var in
    d) StudyDate="$OPTARG";;
    ?) echo $usage >&2; exit 1;;
  esac
done

if ! expr match "$StudyDate" "^20[0-9][0-9][01][0-9][0-3][0-9]$" > /dev/null; then
    echo "$usage" >&2
    exit 1
fi

yamlin="$SMI_ROOT/configs/smi_dataLoad_mysql.yaml"
yamlout="$SMI_ROOT/configs/smi_dataExtract.yaml"
ram_dir="/run/user/$(id -u)/semehr/tmp_$(date +%H%M%D)_$$" # RAM disk
txt_dir="${ram_dir}/txt"
anon_dir="${ram_dir}/anon"
redacted_dir="${ram_dir}/redacted"
output_docs_dir="${ram_dir}/output_docs"
semehr_results_dir="${ram_dir}/semehr_results"
log="${ram_dir}/log"

mkdir -p $txt_dir  $anon_dir  $redacted_dir  $output_docs_dir  $semehr_results_dir
touch $log

message()
{
  echo "$1"
  echo "`date` $1" >> $log
}

tidy()
{
  #rm -fr "${semehr_data_dir}"
  # Keep the log file and just delete the contents
  rm -fr "${txt_dir}"
  rm -fr "${anon_dir}"
  rm -fr "${redacted_dir}"
  rm -fr "${output_docs_dir}"
  rm -fr "${semehr_results_dir}"
}

# CTP_DicomToText needs a python3 environment:
source $SMI_ROOT/lib/python3/virtualenvs/semehr/$(hostname -s)/bin/activate

# Extract text from MongoDB
message "Extracting text ..."
CTP_DicomToText.py -y $yamlout -y $yamlin -i $StudyDate -o $txt_dir  >> $log 2>&1

# Anonymise
message "Anonymising text ..."
semehr_anon.sh -i ${txt_dir} -o ${anon_dir}  >> $log 2>&1

# Redact the text before running SemEHR annotator
message "Redacting text ..."
semehr_redact.py -i "${anon_dir}" -o "${redacted_dir}"  >> $log 2>&1

# Run SemEHR annotator
message "Annotating text ..."
semehr_annotate.sh -i "${redacted_dir}" -o ${semehr_results_dir}  >> $log 2>&1

# Insert the results into MongoDB
message "Inserting into MongoDB ..."
#./semehr_to_mongo.py --drop-collection
./semehr_to_mongo.py -j ${semehr_results_dir} -t ${redacted_dir}  >> $log 2>&1
#./semehr_to_mongo.py --add-index

# Create HTML versions for inspection

# Tidy up our private temporary directory
# rm -fr ${semehr_data_dir}
message "Removing ${ram_dir} ..."
tidy

message "Done"
