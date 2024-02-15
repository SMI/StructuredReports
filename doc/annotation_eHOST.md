# Using eHOST for Study-specific training of annotations

This document describes how to collect feedback for SemEHR annotations for training machine learning models for improving baseline results.

The user interface is provided by eHOST which can display a document
with markup taken from an XML file. The markup shows where the desired
phenotypes have been detected. eHOST allows users to make corrections,
removing incorrect phenotypes or added ones that were missed. A config
file defines which phenotypes can be added. For simplicity, rather than
allowing a full set of phenotypes to be defined, the config can contain
just 'correct', 'incorrect' and 'add new'. (The reason for this is that
the learning process can find out the phenotype from the original
annotations so the user does not need to specify it).

The learning process will take the corrections and look at the phenotypes
in context, using word2vec or similar, looking at surrounding words or
previous two sentences. It will then build a binary classifier which can
be run on a larger set of results. The output provides a confidence level
for how relevant the phenotypes are for the study. The researcher can
then make a decision about selecting documents based on these sets of
confidence levels. Ideally documents themselves could be filtered out
of the search results to make the results more relevant. Note that the
marked-up (corrected) annotations and the learned models are study-specific
but contain valuable manually-curated information so they form the most
important part of the system.

## Download eHOST

eHOST is available from two places

- https://github.com/chrisleng/ehost (the original location)
- https://github.com/jianlins/ehost (an improved fork)

Download from `https://github.com/jianlins/ehost/releases/download/1.3.1-SNAPSHOT/eHOST_1.31-SNAPSHOT_linux_jre.zip`
Unpack the zip to get the executable `ehost-1.31-SNAPSHOT.jar`

## Create XML format for eHOST

Convert SemEHR annotation results to eHOST format.

The eHOST input needs xml, see `ann_conv.py` for `convert_csv_annotations`.

Use `ann_converter.py` at the root folder of the CogStack-SemEHR repository.

```bash
python ann_converter.py  text_file  semehr_ann_file  cui2label_mapping_file  output_xml_file
or
python ann_converter.py  config_file
```

- `config file` is a JSON file containing:

```
{
    "full_text_folder": directory of txt files,
    "ann_folder": directory of json annotation files,
    "output_folder": output directory,
    "full_text_file_pattern": eg. "(%s).txt"
    "ann_file_pattern": eg. "se_ann_%s.json"
    "output_file_pattern": eg. "%s.txt.knowtator.xml"
    "ann_to_convert"
    These are optional:
    "label_mapping_json":
    "anns_simplification": True or false to simplify labels
    "simplified_label": class label for all annotations
}

```

- `text_file` is the full text file
- `semehr_ann_file` is the SemEHR result json file with annotations
- `cui2label_mapping_file` is a json file to map UMLS CUI to a label, see below as an example for mapping two CUIs to `Ischemic stroke`. It can also be in the same format as nlp2phenome's mapping file; see the second example:

```json
   {
    "C0948008": "Ischemic stroke",
    "C3178801": "Ischemic stroke",
    "C0859253": "Haemorrhage stroke"
   }
   or
   {
    "Ischemic stroke": [
        "C0948008\tPreferred label",
        "C3178801\tPreferred label\tSemantic type"
    ],
    "Haemorrhage stroke": [
        "C0859253\tPreferred label"
    ]
   }
```

The label mapping file contains mappings from the CUI into a
label to be used as the class in eHOST. Multiple CUIs may map
to the same label. The file format is normally JSON dictionary
of CUIs, but the program has been extended to allow the format
which nlp2phenome uses which is a dict of labels having an
array of CUIs (with the CUI's label and type after tabs).

Label simplification: normally each annotation would be
written in the XML using a class for each type. For the purpose
of training it is easier for users to see only two classes,
relevant or not relevant, so the labels can be simplified.
`simplified_label`: string, the label to be used as the class in eHOST. Every annotation will be labelled as this class. When it does not present, the conversion will use: `pref` attribute for UMLS mentions or `minor_type` of customised dictionary term (see the annotation doc for details of customised dictionaries).
Simplified conversion will ignore all annotations which are:

- negated,
- with an experiencer who is not the patient, and
- ruled out by any rules.
  It is possible to use label simplification and also have
  a label mapping file if you want this behaviour and more than
  one label.

Remember that the eHOST config file will have to be provided
containing a negative ("not relevant") entry if you wish this
to be an option for the user, as it won't be present if you
let eHOST generate the config from the input xml files.

## eHOST operation

The eHOST program requires two directories, corpus and saved.

- corpus is the text documents
- saved is the knowtator.xml documents
  The xml filename is just the document txt filename with `.knowtator.xml` appended.
- eHOST will create a config directory and file if none is given.

It also uses a config directory containing `projectschema.xml`.
The config file contains the 'classMentions' which are the classes that
can be assigned to words in the document, for example
`ANN_IRRELEVANT` or `ANN_DISEASE`. If no config file is provided it will
create one by looking for the classMentions inside the document xml files.
However, if you rely on that you won't be able to add other classMentions.
If the config file is missing a classMention that appears in an XML file
then it is added to the config so you could just populate the config with
the negative value and have the positives added automatically.

## Annotation process

Use eHOST to load the outputs and ask the annotators to do three things:

- `delete` not relevant annotations
- `add` missed annotations using relevant labels from the mapping file
- `correct` mislabelled annotations by changing the class to a correct label

The user then saves the results which updates the XML files (sadly eHOST
updates the timestamp on all files even those not modified).

## eHOST config examples

The eHOST program in nsh-smi05 is:

```
eHOST/
  eHOST-mk5.1.jar
  eHOST/lib/*.jar
  eHOST/annotationadmin.xml
  eHOST.sys
```

The annotationadmin.xml file contains:

```
<?xml version="1.0" encoding="UTF-8"?><catalog><server url="localhost" port="8080"/></catalog>
```

The eHOST.sys file contains

```
// =================== These are comments ===================

[CONCEPT_LIB]


[ANNOTATOR]
TraAnn00

[ENABLE_DIFF_BUTTON]
false

[ANNOTATOR_ID]


[LATEST_MENTION_ID]
10000

[MASK]
111111

[UMLS_USERNAME]


[UMLS_PASSWORD]
NOPASSWORD

[WORKSPACE_PATH]
/opt/semehr/hwu-test/annotation_sets

[OracleFunction]
true

[ENABLE_UMLS_FILTER]
false

[CPT]
false

[HCPCS]
false

[ICD10CM]
false

[ICD10PCS]
false

[LNC]
false

[MEDLINEPLUS]
false

[MeSH]
false

[MedDRA]
false

[RXNORM]
false

[SCTSPA]
false

[SCTUSX]
false

[SNOMEDCT]
false

[UMD]
false

```

The workspace/project contains:

```
project/
  config/
    projectschema.xml
  corpus/
  saved/
```

- corpus is the text documents
- saved is the knowtator.xml documents

The `projectschema.xml` file defines the annotation/mention classes
which the user will use to mark up or correct the document.
An empty version looks like this:

```
<?xml version="1.0" encoding="UTF-8"?>
<eHOST_Project_Configure Version="1.0">
    <Handling_Text_Database>false</Handling_Text_Database>
    <OracleFunction_Enabled>false</OracleFunction_Enabled>
    <AttributeEditor_PopUp_Enabled>false</AttributeEditor_PopUp_Enabled>
    <OracleFunction>true</OracleFunction>
    <AnnotationBuilder_Using_ExactSpan>false</AnnotationBuilder_Using_ExactSpan>
    <OracleFunction_Using_WholeWord>true</OracleFunction_Using_WholeWord>
    <GraphicAnnotationPath_Enabled>true</GraphicAnnotationPath_Enabled>
    <Diff_Indicator_Enabled>true</Diff_Indicator_Enabled>
    <Diff_Indicator_Check_CrossSpan>true</Diff_Indicator_Check_CrossSpan>
    <Diff_Indicator_Check_Overlaps>false</Diff_Indicator_Check_Overlaps>
    <StopWords_Enabled>false</StopWords_Enabled>
    <Output_VerifySuggestions>false</Output_VerifySuggestions>
    <Pre_Defined_Dictionary_DifferentWeight>false</Pre_Defined_Dictionary_DifferentWeight>
    <PreAnnotated_Dictionaries Owner="NLP_Assistant" />
    <attributeDefs />
    <Relationship_Rules />
    <classDefs />
</eHOST_Project_Configure>
```

The anonymisation training looks like this:

```
<?xml version="1.0" encoding="UTF-8"?>
<eHOST_Project_Configure Version="1.0">
    <Handling_Text_Database>false</Handling_Text_Database>
    <OracleFunction_Enabled>false</OracleFunction_Enabled>
    <AttributeEditor_PopUp_Enabled>false</AttributeEditor_PopUp_Enabled>
    <OracleFunction>true</OracleFunction>
    <AnnotationBuilder_Using_ExactSpan>false</AnnotationBuilder_Using_ExactSpan>
    <OracleFunction_Using_WholeWord>true</OracleFunction_Using_WholeWord>
    <GraphicAnnotationPath_Enabled>true</GraphicAnnotationPath_Enabled>
    <Diff_Indicator_Enabled>true</Diff_Indicator_Enabled>
    <Diff_Indicator_Check_CrossSpan>true</Diff_Indicator_Check_CrossSpan>
    <Diff_Indicator_Check_Overlaps>false</Diff_Indicator_Check_Overlaps>
    <StopWords_Enabled>false</StopWords_Enabled>
    <Output_VerifySuggestions>false</Output_VerifySuggestions>
    <Pre_Defined_Dictionary_DifferentWeight>false</Pre_Defined_Dictionary_DifferentWeight>
    <PreAnnotated_Dictionaries Owner="NLP_Assistant" />
    <attributeDefs />
    <Relationship_Rules />
    <classDefs>
        <classDef>
            <Name>Sensitive_Info</Name>
            <RGB_R>128</RGB_R>
            <RGB_G>255</RGB_G>
            <RGB_B>0</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>eHOST</Source>
        </classDef>
        <classDef>
            <Name>semehr_sensitive_info</Name>
            <RGB_R>0</RGB_R>
            <RGB_G>192</RGB_G>
            <RGB_B>192</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>XML</Source>
        </classDef>
        <classDef>
            <Name>Not_Sensitive_Info</Name>
            <RGB_R>192</RGB_R>
            <RGB_G>0</RGB_G>
            <RGB_B>192</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>eHOST</Source>
        </classDef>
    </classDefs>
</eHOST_Project_Configure>
```

The body parts training (v3) looks like this:

```
<?xml version="1.0" encoding="UTF-8"?>
<eHOST_Project_Configure Version="1.0">
    <Handling_Text_Database>false</Handling_Text_Database>
    <OracleFunction_Enabled>false</OracleFunction_Enabled>
    <AttributeEditor_PopUp_Enabled>false</AttributeEditor_PopUp_Enabled>
    <OracleFunction>true</OracleFunction>
    <AnnotationBuilder_Using_ExactSpan>false</AnnotationBuilder_Using_ExactSpan>
    <OracleFunction_Using_WholeWord>true</OracleFunction_Using_WholeWord>
    <GraphicAnnotationPath_Enabled>true</GraphicAnnotationPath_Enabled>
    <Diff_Indicator_Enabled>true</Diff_Indicator_Enabled>
    <Diff_Indicator_Check_CrossSpan>true</Diff_Indicator_Check_CrossSpan>
    <Diff_Indicator_Check_Overlaps>false</Diff_Indicator_Check_Overlaps>
    <StopWords_Enabled>false</StopWords_Enabled>
    <Output_VerifySuggestions>false</Output_VerifySuggestions>
    <Pre_Defined_Dictionary_DifferentWeight>false</Pre_Defined_Dictionary_DifferentWeight>
    <PreAnnotated_Dictionaries Owner="NLP_Assistant" />
    <attributeDefs />
    <Relationship_Rules />
    <classDefs>
        <classDef>
            <Name>Body Part, Organ, or Organ Component</Name>
            <RGB_R>0</RGB_R>
            <RGB_G>192</RGB_G>
            <RGB_B>128</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>XML</Source>
        </classDef>
        <classDef>
            <Name>Body Space or Junction</Name>
            <RGB_R>0</RGB_R>
            <RGB_G>192</RGB_G>
            <RGB_B>192</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>XML</Source>
        </classDef>
        <classDef>
            <Name>ANN: Body part</Name>
            <RGB_R>128</RGB_R>
            <RGB_G>255</RGB_G>
            <RGB_B>0</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>eHOST</Source>
        </classDef>
        <classDef>
            <Name>ANN: NOT a body part</Name>
            <RGB_R>192</RGB_R>
            <RGB_G>0</RGB_G>
            <RGB_B>192</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>eHOST</Source>
        </classDef>
        <classDef>
            <Name>semehr_sensitive_info</Name>
            <RGB_R>0</RGB_R>
            <RGB_G>192</RGB_G>
            <RGB_B>255</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>XML</Source>
        </classDef>
        <classDef>
            <Name>Body Location or Region</Name>
            <RGB_R>0</RGB_R>
            <RGB_G>255</RGB_G>
            <RGB_B>0</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>XML</Source>
        </classDef>
        <classDef>
            <Name>Diagnostic Procedure</Name>
            <RGB_R>0</RGB_R>
            <RGB_G>255</RGB_G>
            <RGB_B>128</RGB_B>
            <InHerit_Public_Attributes>true</InHerit_Public_Attributes>
            <Source>XML</Source>
        </classDef>
    </classDefs>
</eHOST_Project_Configure>
```
