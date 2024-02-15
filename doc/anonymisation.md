# SemEHR anonymisation

This code will anonymise text files and produce two outputs:
* the redacted text file
* a metadata file describing which PII elements were found, with their position in the document.

The metadata output can be in JSON format or XML format.
SMI uses the XML format for two reasons, it is more comprehensive
and it can be used as input to the eHOST program for manual
annotation and correction. This is essential for training and
verification.

The anonymisation is implemented using a rule based approach. 

## Table of Contents
- [Installation](#installation)
- [Configuration](#configuration)
- [Rules](#rules)
  - [Document structure rules](#document-structure-rules)
  - [PHI rules](#phi-rules)
- [Run the anonymisation process](#run-the-anonymisation-process)
- [Update rules to improve anonymisation](#update-rules-to-improve-anonymisation)
- [Testing rules separately](#testing-rules-separately)

## Installation

This version no longer requires Python2, it works in Python3.

If using the anonymiser standalone then only the python dependencies
need to be installed, see the `CogStack-SemEHR/requirements.txt` file.

The python regular expression parser `re` cannot handle some of the
regular expressions in the anonymisation rules, especially on some of
the larger documents, so it tries to use Google's replacement, called `re2`.
You need to `apt install libre2-dev` first, then `pip install pyre2`.
If re2 is not installed it will silently fallback to normal re but this may hang
on the complex patterns. Note: do not `pip install re2`, it doesn't work.
There is also `google-re2` but this is untested.

If using the anonymiser to anonymise text inside Structured Reports in
DICOM format, i.e. within the SMI environment, then use the script
`src/tools/anon_init.sh`

## Configuration

- Repo name: [CogStack-SemEHR](https://github.com/SMI/CogStack-SemEHR)
- Entry Script: `./anonymisation/anonymiser.py`
- configuration file: `./anonnymisation/conf/anonymisation_task.json`

The template configuration file in conf/anonymisation_task.json
can be copied and modified.

```
{
  "mode": "mt",
  "number_threads": 20,
  "rules_folder": "./conf/rules/",
  "rule_file_pattern": ".*_rules.json",
  "rule_group_name": "PHI_rules",
  "working_fields": ["Finding", "Text", "ContentSequence"],
  "sensitive_fields": ["Patient ID", "Patient Name", "Person Observer Name", "Referring Physician Name"],
  "annotation_mode": false,
  "text_data_path": "./test_data",
  "anonymisation_output": "./test_output/",
  "extracted_phi": "./test_output/extracted_phi.json",
  "grouped_phi_output": "./test_output/grouped_phi.txt",
  "logging_level": "DEBUG",
  "logging_file": "./test_output/anonymisation.log",
  "use_spacy": false
}
```
 
`mode` is either `mt` or `dir` meaning multithreaded or not.
There is no requirement for using multiple threads.
If `mt` then `number_threads` is the number of threads used.

`rules_folder` is the relative path to the directory containing JSON-format rules files. The filenames in that directory are matched against `rule_file_pattern` to find rules files.

`rule_group_name` is the group name inside the rules files which will be used so your rules files can have lots of groups for different purposes but only one group will be used.

`working_fields` is a list of document sections which will be anonymised. Sections are denoted by a line starting `[[ContentSequence]]` for example; outside of such a section the text is ignored.

`sensitive_fields` is a list of document sections where sensitive information (names) can be provided, typically extracted from the document (DICOM) header, for example `[[Patient Name]] Nicol McNicol` would automatically remove any mention of `Nicol` or `McNicol` from the document.

`annotation_mode` should be true to save annotations in XML format.

`text_data_path` is the path to the text files to be anonymised.

`anonymisation_output` is the path to the output directory.

`extracted_phi` is the filename of the 'phi' file which will be JSON format containing the anonymised parts of all documents.

`grouped_phi_output` is the filename of the grouped 'phi' data.

`logging_level` can be `DEBUG` to log debugging information, or `INFO`.

`logging_file` is the filename of the log file.

`use_spacy` defaults to false but if set to true and spacy is installed
then it uses spaCy to anonymise as well.
The language model is currently hard-coded `en_core_web_sm`.
It only anonymises `PERSON` entities but has the disadvantage that
it may also remove the names of drugs.

The rules used to anonymise text are stored in the `rules_folder` directory.
All files matching the `rule_file_pattern` will be loaded.

## Rules

Rules are defined using regular expressions and grouped into categories. 

Two types of rules are defined.
- Document structure rules: used for parsing document structures (Note: not used in SMI)
- PHI (Protected health information) rules: used to identify PHI mentions

Rule document structure
```
{
    "RULE_CATEGORY_NAME": {
        "RULE_SET_NAME": [
            "RULE": {
                ...
            }
        ]
    }
}
```

The `general data structure` of an atom rule.
```javascript

"RULE_NAME": {
    "pattern": "REGULAR_EXPRESSION_(WITH_GROUPS)", 
    "flags": ["multiline",...]
    "data_labels": ["LABEL1", "LABEL2"],
    "data_type": "DATA TYPE"
    "disabled": false
}

```

For example
```
{
  "PHI_rules": {
    "clinic": [
      {
        "pattern": "\\bplease\\s+contact(\\s+\\w+(\\s+\\w+){0,2})",
        "flags": [ "ignorecase" ],
        "data_labels": [ "name" ],
        "data_type": "institute"
      },
```

The pattern is a python regex but note that as it's in JSON it needs a
double backslash. Note that the regex will be searched in fragments of
the document, not the whole document and not necessarily sentences.
(In fact it may be whole sections defined by `working_fields`). This
has implications for anchors such as `^` and `$`, and `multiline`.

The `flags` may contain `ignorecase` and/or `multiline`, having the same meaning
as documented in the Python `re` library.

The `data_labels` are names given to each regex capture 'group' (the parts
inside round brackets). The order of the names must match the list of groups.
They can be optional but if the group captures the name or number to be anonymised
then the `data_labels` must have a `name` or `number`, as the text which matches
that capture group will be found and replaced.

The `data_type` is used to identify what type of information was extracted.

`disabled` is optional; when true, the rule is not used.

`comment` could also be used to give an explanation for the rule.

### Document structure rules

Note: these are not used in SMI.

These rules are used to identify `locators` of section headings in the document. 
Everything after a `locator` and before the next `locator` belongs to a `section`.


### PHI rules

These rules are used to identify typed PHIs. They are stored in the part of
the rule document that are indexed with the key `sent_rules` as described below.
It is composed of a list of `rule sets`.
```javascript
"sent_rules":{
    "RULE_SET_NAME": [
        {
            "pattern": "\\b(ID)\\:{0,}\\s{0,}(\\d+)\\b",
            "flags": [
                "ignorecase"
            ],
            "data_labels": [
                "label",
                "name"
            ],
            "data_type": "ID"
        },
        ...
    ]
}
```

Each `rule set` is to identify a type of PHI. The following is a snapshot of a rule set called `IDs`,
which is to identify identifiers from the text.

```javascript
"IDS": [
    {
        "pattern": "\\b(ID)\\:{0,}\\s{0,}(\\d+)\\b",
        "flags": [
            "ignorecase"
        ],
        "data_labels": [
            "label",
            "name"
        ],
        "data_type": "ID"
    },
    ... // more rules
]

```


## Run the anonymisation process

If SemEHR is installed as docker version: run into the container with bash terminal with `docker-compose`:
```
docker-compose -f YOUR-COMPOSE-FILE-YML-PATH run --entrypoint /bin/bash semehr
```

If not using docker then just run the script.
Pass the path to a configuration file. You can use any path;
in this example we are using the provided template config file.

```
cd CogStack-SemEHR/anonymisation
python3 anonymiser.py conf/anonymisation_task.json
```

The program will anonymise all the text files in the input folder
and place annotations and/or anonymised text in the output folder.
The folders are specified in the config file as:
`text_data_path` for input files,
`anonymisation_output` for output files,
`extracted_phi` for the filename of the found names,
`grouped_phi_output` similarly,
`logging_file` for the log file, and set
`annotation_mode=true`.

Input files must be in the SMI format for best results. This is the
output from `CTP_DicomToText.py` (see the SmiServices repo) but is
easily created manually. It has headers like this:
```
[[Patient Name]] Anne Boleyn
[[Referring Physician Name]] Charles Dickens
[[ContentSequence]]
```

The headers are defined in the config file as `sensitive_fields`.
It uses the given names (from any tag listed in the `sensitive_fields` config)
so they can be replaced if found in the text. Forenames and surnames
are handled separately.

It then anonymises all text after the `[[ContentSequence]]` header, or any
tag listed in the `working_fields` config. If there is no field in the input
from the `working_fields` config then nothing is anonymised.

The output files are given the same name as the input files.
If XML has been requested then additional files will be written having
the same name but with `.knowtator.xml` appended. The `phi` file will
be in JSON format.

The XML format contains a set of annotations like this:
```
<?xml version="1.0" ?>
<annotations>
 <annotation>
  <mention id="filename-1"/>
  <annotator id="filename-1">semehr</annotator>
  <span start="125" end="135"/>
  <spannedText>Tom Sawyer</spannedText>
  <creationDate>Wed November 11 13:04:51 2020</creationDate>
 </annotation>
 <classMention id="filename-1">
  <mentionClass id="semehr_sensitive_info">Tom Sawyer</mentionClass>
 </classMention>
</annotations>
```

The phi output looks like this:
```
  {
    "doc": "inputfile1.txt",
    "pos": 520,
    "start": 520,
    "type": "date",
    "sent": "23/04/15"
  },
  {
    "doc": "inputfile2.txt",
    "pos": 1435,
    "start": 1447,
    "type": "assistant",
    "sent": "Dr Jobs"
  },
```

## Update rules to improve anonymisation

Please refer to the [Rules](#rules) section for details about rule design.
As of June 2021, we have the following `rule sets` defined for SMI project.

<img src="./asset/PHI-rule-sets-062021.png" width="260"/>

### editing and testing procedure

1. **NB** always make a copy of current rule file before making any changes to exiting rules.
2. Add a rule file `NEW_rules.json` to the rule file folder
    - Or edit an existing rule file.
3. Prepare a set of documents for testing. It's better the set contains both 
new situations you would like to improve on and also a good samples of mentions of other types of
the same PHIs that you are modifying on.
4. Run the anonymiser script to test and validate.
5. There is also a test script `test_rules.py` which allows you to test the
rules on a fragment of text, and show you which rules matched.

## Testing rules separately

Use the `test_rules.py` script to test all of the rules against a given string.
