#!/bin/bash

# Given a specific date YYYYMMDD convert all SRs with that StudyDate
# directly from MongoDB into an output directory, run that through the
# SemEHR anonymiser, run the anonymous text through the annotator,
# put the semehr_results into PostgreSQL. Keeps the extracted files
# if ArchiveDir if requested.

# NOTE assumes that the RAM disk for the current user already exists

prog=$(basename $0)
options="a:d:"
usage="usage: $prog -d StudyDate in the form YYYYMMDD"
while getopts "$options" var; do
  case $var in
    a) ArchiveDir="$OPTARG";;
    d) StudyDate="$OPTARG";;
    ?) echo $usage >&2; exit 1;;
  esac
done

if ! expr match "$StudyDate" "^20[0-9][0-9][01][0-9][0-3][0-9]$" > /dev/null; then
    echo $usage >&2
    exit 1
fi

# Configuration:
yamlin="$SMI_ROOT/configs/smi_dataLoad_mysql.yaml"
yamlout="$SMI_ROOT/configs/smi_dataExtract.yaml"
# Settings:
ram_dir="/run/user/$(id -u)/semehr/tmp_${StudyDate}_$$" # RAM disk
txt_dir="${ram_dir}/txt"
metadata_dir="${ram_dir}/metadata"
anon_dir="${ram_dir}/anon"
output_docs_dir="${ram_dir}/output_docs"
semehr_results_dir="${ram_dir}/semehr_results"
log="${ram_dir}/${prog}.log"

mkdir -p $txt_dir  $metadata_dir  $anon_dir  $output_docs_dir  $semehr_results_dir
touch $log

message()
{
    echo "$(date) $1"
    echo "$(date) $1" >> $log
}

fatal()
{
    message "$1"
    exit 1
}

tidy_up()
{
  #rm -fr "${ram_dir}"
  rm -fr "${txt_dir}"
  rm -fr "${metadata_dir}"
  rm -fr "${anon_dir}"
  rm -fr "${output_docs_dir}"
  rm -fr "${semehr_results_dir}"
  #rm -f "${log}"
  #rmdir "${ram_dir}"
}

# CTP_DicomToText needs a python3 environment:
source $SMI_ROOT/lib/python3/virtualenvs/semehr/$(hostname -s)/bin/activate

# Extract text from MongoDB
message "Extracting text ..."
CTP_DicomToText.py -y $yamlout -y $yamlin -i $StudyDate -o $txt_dir -m $metadata_dir  >> $log 2>&1
if [ $? -ne 0 ]; then fatal "ERROR: CTP_DicomToText.py failed on $StudyDate in $txt_dir"; fi

# Anonymise
message "Anonymising text ..."
semehr_anon.py -i ${txt_dir} -o ${anon_dir}  >> $log 2>&1
if [ $? -ne 0 ]; then fatal "ERROR: semehr_anon.py failed on $StudyDate in $txt_dir"; fi

# Run SemEHR annotator
message "Annotating text ..."
semehr_annotate.sh -i ${anon_dir} -o ${semehr_results_dir}  >> $log 2>&1
if [ $? -ne 0 ]; then fatal "ERROR: semehr_annotate.sh failed on $StudyDate in $anon_dir"; fi

# Archive the results if requested
if [ -d "$ArchiveDir" ]; then
  message "Archiving to $ArchiveDir/$StudyDate.zip ..."
  cd ${ram_dir}
  zip -qr $ArchiveDir/$StudyDate.zip  ${prog}.log semehr_results anon metadata
fi

# Insert the results into PostgreSQL
#message "Inserting into PostgreSQL ..."
#semehr_to_postgres.py -j ${semehr_results_dir} -t ${anon_dir} -m ${metadata_dir} >> $log 2>&1
#if [ $? -ne 0 ]; then fatal "ERROR: semehr_to_postgres.py failed on $StudyDate in $semehr_results_dir"; fi

# Tidy up our private temporary directory
message "Removing ${ram_dir} ..."
tidy_up

message "Done"
exit 0
