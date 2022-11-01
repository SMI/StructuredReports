#!/bin/bash
# Extract a zip containing
#   anon, metadata, semehr_results directories
# and insert each document into the postgresql database.
# Usage: file.zip ...
# (can insert more than one)
# File will be renamed as .done if successful.

prog="$0"
progdir=$(dirname "$prog")
progdir=$(realpath "$progdir")
yamlfile="${progdir}/../config/sample_dataload.yaml"
export SMI_LOGS_ROOT="${progdir}"
export PATH=${PATH}:${progdir}
source ~/venv/bin/activate
# All output goes to a log file:
logfile=${SMI_LOGS_ROOT}/$(basename $prog).log
echo "Log file: $logfile"
exec &>> $logfile

insert_zip()
{
    tmpdir=/run/user/$(id -u)/semehr/tmp_$$
    mkdir -p $tmpdir

    echo "$(date) Unpacking $zipfile"
    (cd $tmpdir ; unzip -q $zipfile)

    echo "$(date) Loading $zipfile"
    semehr_to_postgres.py -j $tmpdir/semehr_results \
     -t $tmpdir/anon \
     -m $tmpdir/metadata \
     -y $yamlfile
    if [ $? -ne 0 ]; then
        echo "ERROR running ./semehr_to_postgres.py -j $tmpdir/semehr_results -t $tmpdir/anon -m $tmpdir/metadata -y $yamlfile" >&2
        exit 1
    fi
    echo "$(date) Loaded $zipfile"

    rm -fr $tmpdir
    mv ${zipfile}  ${zipfile}.done
}


for zipfile; do
    zipfile=$(realpath $zipfile)

    insert_zip $zipfile
done
