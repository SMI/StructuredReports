#!/bin/bash
# Extract the text portions of a DICOM file.
# Usage: file.dcm ...
for i do
  dcm2json "$i" | dicom_tag_string_replace.py | jq '..|select(.vr=="ST" or .vr=="PN" or .vr=="DA" or .vr=="LO" or .vr == "UT")?|.Value[0]'
done
