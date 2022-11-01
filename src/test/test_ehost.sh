#!/bin/bash
# Create the files necessary to run eHOST

ehost_dir="tmp/ehost/project1"
mkdir -p $ehost_dir/config
mkdir -p $ehost_dir/corpus
mkdir -p $ehost_dir/saved

# create a fully populated config from the mapping file
./mapping_to_ehost_config.py tmp/settings/concept_mapping.json > $ehost_dir/config/projectschema.xml

for docnum in 0069 0157; do
  cp tmp/doc/doc${docnum}.txt               $ehost_dir/corpus
  cp tmp/xml/doc${docnum}.txt.knowtator.xml $ehost_dir/saved
done

echo "Navigate to $ehost_dir in eHOST:"
~/SemEHR/eHOST/eHOST_1.31-SNAPSHOT_linux_jre/run
