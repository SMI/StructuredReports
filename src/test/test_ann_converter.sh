#!/bin/bash

# Convert a document into XML using ann_converter
# which handles the mapping from CUIs into labels.
# This test program just does the first ten docs from our samples.

ann_conv=~/SemEHR/CogStack-SemEHR/ann_converter.py
map=~/SemEHR/nlp2phenome/settings/concept_mapping_stroke_sample.json
txtdir="newdoc"    # or "../data/mtsamples_ihi_docs"
jsondir="newjson"  # or "../data/mtsamples_ihi_semehr_results"
xmldir="newxml"

# A simple example of a mapping:
#map="/tmp/mapping.json"
#cat <<_EOF_ > ${map}
#{
#"C4282165": "ADENOPATHY",
#"C0024109": "PULMONES",
#"C4552864": "ALLERGIC RHINITIS",
#"C0162723": "ZIRTEK"
#}
#_EOF_

for docnum in $(seq 9); do
  doc=doc000$docnum
  #  input.txt input.semehr_results input.mapping output.xml
  python3 $ann_conv $txtdir/${doc}.txt $jsondir/${doc}.json  ${map}  $xmldir/${doc}.txt.knowtator.xml
done

#rm -f ${map}
