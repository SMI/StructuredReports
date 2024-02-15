# Annotation learning process

The learning process takes a set of annotations which have been
corrected manually by a specialist reviewer and compares them to
the original annotations. It attempts to learn from the surrounding
context in the text documents which annotations were useful and
which were not. The learned model can then be applied to unseen
documents, producing more relevant annotations.

The whole learning procedure is:

- curate a set of mappings, basically a list of concepts (CUIs)
  of relevance
- search for documents containing these concepts
- manually review a subset of them to indicate which concepts were
  useful to the study and which were not - this is what we call "training"
- create a machine-learned model using the results to learn from the
  context - this is what we call "learning"
- apply the machine-learned model to the rest of the search results
  to provide an indication of the confidence of the relevance of the
  annotations - this is what we call "prediction"

This document is concerned with "learning" and "prediction".

# Learning

The configuration file is JSON format:

```
{
  "kfold": 10, the number of folds (splits) during training
  "corpus_folder": "$textdir", the original text files
  "gold_folder": "$xmldir", the XML files after training with eHOST
  "semehr_folder": "$jsondir", the annotation JSON files
  "working_folder": "$workdir", for intermediate (temporary) files
  "concept_mapping_file": "$settingsdir/concept_mapping.json",
  "learning_model_dir": "$modeldir", where the ML models are written
  "entity_types_file": "$settingsdir/entity_types.txt",
  "ignore_mapping_file": "$settingsdir/ignore_mapping.json",
  "min_sample_size": 25,
  "gold_file_pattern": "%s.txt.knowtator.xml",
  "eHostGD": true, whether to use eHOST format (or EDiR from Edinburgh Informatics)
  "pattern_folder": "",
  "csv_file": "",
  "viz_file": "",
  "conll_output_file": ""
}
```

The `concept_mapping_file` is the JSON mapping file which maps UMLS CUI to phenotypes.
The format should be a dictionary of phenotypes, the value of each is
an array of strings containing CUIs (and their descriptions), for example:

```
  "atrophy": [
    "C0740279\tCerebellar atrophy\tDisease or Syndrome",
    "C1265891\tFocal atrophy\tPathologic Function",
```

The CUI comes first and then optionally after tab characters follows
the Preferred label then the Semantic Type, although these are only
used for human readability not during the learning process. This mapping
file could also be used in the web REST API (without the stuff after tabs).

The `entity_types_file` is the list of phenotypes to be worked on.
This is a simple text file with a phenotype name on each line.
It could be derived from the concept mapping file simply with
`jq -r 'keys[]' < concept_mapping.json > entity_types.txt`
if you wanted all phenotypes to be worked on, or it can be a subset
of the phenotypes from the concept_mapping file.

The `ignore_mapping_file` is a JSON file with any CUIs which should be ignored.
You can use an empty set with the content `{}` otherwise specify a format like:

```
{
  "stroke": [
    "C0018944",
    "haematoma",
    "C4019010",
    "C0005847"
  ],
  "microhaemorrhage": [
    "C0019080"
  ],
```

This may only be needed when the mapping file was generated automatically
and contains phenotypes you don't need, to get rid of false positives.
It can contain words (not just CUIs, eg. haematoma above) if the word is
defined in a customised dictionary (see the annotation creation doc).

The `min_sample_size` parameter is the minimal number of samples
to train a model. If the sample size is less than this number,
a counting based stats will be used to assess the correctness
of baseline results rather than a machine learning model.

Run the learning process using:

```
nlp2phenome/run_learning.py $settingsdir/settings.json
```

The output is a set of files in the models directory,
one for each of the keys in concept_mapping,
i.e. the names listed in the entity_types file.
There are two types:

- .lm files (LabelModel class)
- .model files (RandomForestClassifier class from sklearn.ensemble because random forest is default algorithm)
  Both are binary serialised Python objects, so will be dependent
  on the class definition (if you modify the class you might not be
  able to load in old models).

Q. why does it crash when the models directory is not empty
Q. why only one .model file?

It also outputs performance metrics in a CSV file.

Note: the safehaven_mini branch has extra functions for stroke
but useful for others to do patient level inference (rather than just document level inference).

# Prediction

doc_inference code is not needed. It is essentially patient level inference as only one doc per patient.
stroke subtype rules: phenotype is "pref" field for exclusion and inclusion, see merged_concept_mapping, set of concepts mapped to one phenotype
each study has its own mappings

The configuration file is JSON format:

```
{
"concept_mapping_file" : "settings/concept_mapping.json",
"entity_types_file" : "settings/entity_types.txt",
"ignore_mapping_file" : "settings/ignore_mapping.json",
"learning_model_dir" : "settings/models",
"output_file" : "output/prediction.out.json",
"output_folder" : "output",, the output directory
"test_ann_dir" : "$jsondir", the annotation JSON files
"test_fulltext_dir" : "$textdir", the original text files
"predict_mode" : "direct_nlp",
}
```

The `predict_mode` setting can be omitted (default), or `hybrid` or `direct_nlp`.
The latter will force the use of the ML model approach whereas hybrid will
try to use ML but will fall back to a statistics-based method if not enough data.

Run the prediction process using:

```
nlp2phenome/predict_helper.py $settingsdir/settings.json
```

The default behaviour is to consider a phenotype relevant if its
confidence probability is greater than 50%.
