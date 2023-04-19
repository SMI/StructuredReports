#!/bin/bash
# Extract the text portions of a DICOM file.
# Usage:
#   directory - output all dcm underneath that directory
#   filename  - output just that one file
# Filename can be relative to $PACS_ROOT
# or it can be a SR filename / SOPInstanceUID in which case
# the full pathname will be looked up in a mapping table.
# If that's used then any -an.dcm suffix will be ignored.
# Requires: dcm2json (from the dcmtk package)
# Requires: dicom_tag_string_replace.py from StructuredReports repo)
# Optional: csv file mapping SR name to a file path

lookup="$SMI_ROOT/MongoDbQueries/SR_Analysis/SR_Filename_to_Path.csv"
jq_expr='..|select(.vr=="ST" or .vr=="PN" or .vr=="DA" or .vr=="LO" or .vr == "UT")?|.Value[0]' 

for arg do
    if [ -d "$arg" ]; then

        # Find all files (even if not DICOM, oops) and output sequentially
        find "$arg" -type f | while read dcm; do
            echo ==============================================================================================================================
            echo $dcm
            dcm2json $dcm | dicom_tag_string_replace.py | jq "$jq_expr"
        done

    else
            # Only process the first argument
            # Can be relative to the PACS_ROOT
            if [ -f "$PACS_ROOT/$arg" ]; then arg="$PACS_ROOT/$arg"; fi
            if [ ! -f "$arg" ]; then
                arg="$PACS_ROOT"/$(grep $(basename "$arg" -an.dcm) "$lookup" | awk -F, '{print$2}')
            fi
            echo ==============================================================================================================================
            echo $arg
            dcm2json "$arg" | dicom_tag_string_replace.py | jq "$jq_expr"

    fi
done
