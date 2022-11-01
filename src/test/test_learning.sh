#!/bin/bash

# Run the learning process on a set of documents in "newdoc"
# (and their json and xml files)
# to create a model file for each label.
# The labels are defined in the mapping file.

# NB it requires spacy en_core_web_sm in reportreader.py but en_core_web_lg in mention_pattern.py ???
# XXX Why does it need spacy for the learning???

textdir="tmp/doc"
xmldir="tmp/xml"
jsondir="tmp/json"
workdir="tmp/workings"
settingsdir="tmp/settings"
modeldir="tmp/models"
maxdocs=200 # only use first 200 docs from input dir
nsplits=10 # normally 10 but must be < number of docs
cogstack_dir="../../../CogStack-SemEHR"
nlp2phenome_dir="../../../nlp2phenome"

rm -fr   $textdir $xmldir $jsondir $workdir $settingsdir $modeldir
mkdir -p $textdir $xmldir $jsondir $workdir $settingsdir $modeldir

# Copy a sample mapping file
# each key name is an array of CUIs like this: "Cnnnnnn\tLabel1\tLabel2"
cp $nlp2phenome_dir/settings/concept_mapping_stroke_sample.json $settingsdir/concept_mapping.json
# simply extract the keys, i.e. entity class names that we are interested in
jq -r 'keys[]' < $settingsdir/concept_mapping.json > $settingsdir/entity_types.txt
# ignore any of them?
printf "{}\n"            > $settingsdir/ignore_mapping.json

cat << _EOF > $settingsdir/settings.json
{
  "kfold": $nsplits,
  "corpus_folder": "$textdir",
  "gold_folder": "$xmldir",
  "semehr_folder": "$jsondir",
  "working_folder": "$workdir",
  "concept_mapping_file": "$settingsdir/concept_mapping.json",
  "learning_model_dir": "$modeldir",
  "entity_types_file": "$settingsdir/entity_types.txt", 
  "ignore_mapping_file": "$settingsdir/ignore_mapping.json", 
  "min_sample_size": 5, 
  "gold_file_pattern": "%s.txt.knowtator.xml", 
  "eHostGD": true,
  "pattern_folder": "",
  "csv_file": "",
  "viz_file": "",
  "conll_output_file": ""
}
_EOF


# Find all documents with any of the desired CUIs
# and copy first 200 to the input directory
# then copy the corresponding json files.
# Create regex like "C123|C456" from the mapping file:
regex=$(jq 'add|map(split("\t")[0])|join("|")' < $settingsdir/concept_mapping.json)
jsonfiles=$(egrep -l $regex ../data/mtsamples_ihi_semehr_results/*.json | head -$maxdocs)
textfiles=$(echo "$jsonfiles" | sed -e 's/json/txt/' -e 's/mtsamples_ihi_semehr_results/mtsamples_ihi_docs/')
echo "Copying $maxdocs text files"
cp $textfiles $textdir
echo "Copying $maxdocs JSON files"
cp $jsonfiles $jsondir


# Convert txt,json to XML using the concept mapping
echo "Converting to XML"
for textfile in $textdir/*; do
  bn=$(basename $textfile .txt)
  python3  $cogstack_dir/ann_converter.py  $textdir/$bn.txt  $jsondir/$bn.json  $settingsdir/concept_mapping.json  $xmldir/$bn.txt.knowtator.xml
done


# Modify the documents to simulate someone running eHOST and making changes to annotations.
# Either change <mentionClass id="something" into id="DELETED" to simulate change
# or just replace with empty list of annotations.
# Could also add new annotations? More complex to test.
for n in 0069 0157; do

  # Make empty annotations to simulate deleting them? Does nothing
  cat << _EOF_ > $xmldir/doc${n}.txt.knowtator.xml
<?xml version="1.0" ?>
<annotations textSource="None.txt">
</annotations>
_EOF_

  # Change annotation class to DELETED
  #sed -i 's/<mentionClass id="[^"]*"/<mentionClass id="DELETED"/' $xmldir/doc${n}.txt.knowtator.xml

  # Change annotation class by prefixing with neg_
  #sed -i 's/<mentionClass id="/<mentionClass id="neg_/' $xmldir/doc${n}.txt.knowtator.xml

done

# clean out the models from last time otherwise it crashes
rm -f $modeldir/*.lm  $modeldir/*.model

# Run the learning process
python3 $nlp2phenome_dir/run_learning.py $settingsdir/settings.json
