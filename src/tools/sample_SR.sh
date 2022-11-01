#!/bin/bash
# Create a set of SR in DICOM format based on the content of sample_SR.csv
# Requirements:
#  sourced the virtualenv containing SmiServices, etc
#  dcm2json (apt install dcmtk)
#  $SMI_ROOT/scripts, or scripts in SRAnonTool directory
#  /opt/semehr/data must exist for temporary files
#  /opt/semehr/CogStack-SemEHR must link to the repo

# Checking the anonymisation will only work if it can find the DICOM file
# so don't use the --dirs or --dirs0 options.
check_anonymisation=1 # 0=quick 1=check anonymisation
if [ $check_anonymisation -eq 0 ]; then create_dirs="--dirs"; fi

set -e # ensure that errors cause exit

export SMI_LOGS_ROOT=${SMI_LOGS_ROOT:-logs} # ./logs if not set
export PATH=${PATH}:.:${SMI_ROOT}/scripts:~/SemEHR/SmiServices/src/applications/SRAnonTool # where to find CTP_SRAnonTool.sh etc?

# For each line in the CSV file except the first header line
#   change CT\SR into CT\\SR otherwise the while read strips it out
#   change comma to space so that while read can split into variables
sed -n -e 's,\\,\\\\,' -e '2,$s/,/ /gp' sample_SR.csv | while read id sop series study patient date time modality; do
    echo "Creating SR $id in $sop.dcm"

    # Create a random DICOM (random names and text content) with the given UIDs
    # If you want to use the id to reference a specific sample document then use:
    #  -t ../data/mtsamples_ihi_docs/doc$(printf %04d $id).txt
    ./sample_SR.py -o "$sop".dcm $create_dirs \
	    --text ../data/mtsamples_ihi_docs/doc$(printf %04d $id).txt \
	    --sopid "$sop" --seriesid "$series" --studyid "$study" \
	    --patientid "$patient" \
	    --contentdate "$date" \
	    --modalities "$modality"

    if [ $check_anonymisation -gt 0 ]; then
        # Pretend CTP anonymiser has been run to create anon file
        cp $sop.dcm $sop.anon.dcm

        # Run the SR anonymiser
        CTP_SRAnonTool.sh -i $sop.dcm -o $sop.anon.dcm

        # Check the output
        ./dcm2txt.sh $sop.anon.dcm > $sop.anon.txt
    fi

done

