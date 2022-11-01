#!/bin/bash

# Test the learned models by simulating some search results and applying the
# models using nlp2phenome/predict_helper.py

orig_text="tmp/doc"
orig_json="tmp/json"
orig_settings_dir="tmp/settings"
orig_models_dir="tmp/models"
pred_dir="tmp/pred"
cfg="$pred_dir/test_pred.cfg"
textdir="$pred_dir/txt"
jsondir="$pred_dir/json"
newpred="$pred_dir/predicted"
mkdir -p $textdir $jsondir $newpred
nlp2phenome_dir="../../../nlp2phenome"

echo "Copying a subset of unseen documents..."
# Use a completely new set of documents and see what happens to them
#for n in 1 2 3 4 5 6 7 8 9; do
#  cp ../data/mtsamples_ihi_docs/doc001?.txt $textdir
#  cp ../data/mtsamples_ihi_semehr_results/doc001?.json $jsondir
#done
#cp ../data/mtsamples_ihi_docs/doc0???.txt $textdir
#cp ../data/mtsamples_ihi_semehr_results/doc0???.json $jsondir
# Use the exact same original documents and see what's changed
cp $orig_text/*.txt   $textdir
cp $orig_json/*.json  $jsondir

# "predict_mode" == "direct_nlp" or "hybrid" or "none"/unset
cat <<_EOF_ > ${cfg}
{
"concept_mapping_file" : "$orig_settings_dir/concept_mapping.json",
"entity_types_file" : "$orig_settings_dir/entity_types.txt",
"ignore_mapping_file" : "$orig_settings_dir/ignore_mapping.json",
"learning_model_dir" : "$orig_models_dir",
"output_file" : "$newpred/test_pred.out.json",
"output_folder" : "$newpred",
"test_ann_dir" : "$jsondir",
"test_fulltext_dir" : "$textdir",
"predict_mode" : "hybrid"
}
_EOF_

# Clean out last results
rm -f $newpred/*

# Predict new results
echo "Predicting..."
python3 $nlp2phenome_dir/predict_helper.py  $cfg

# Tidy up
rm -f $cfg

# How to check
echo "Check the results using:"
echo "diff -r -I  '<annotations textSource' -I '<mention id' -I '<classMention id' -I '<creationDate' tmp/xml $newpred"
