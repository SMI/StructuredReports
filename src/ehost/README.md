# eHOST

Download the executable from here:
https://github.com/jianlins/ehost/releases/download/1.3.1-SNAPSHOT/eHOST_1.31-SNAPSHOT_wo_jre.zip
or
https://github.com/jianlins/ehost/releases/download/1.3.1-SNAPSHOT/eHOST_1.31-SNAPSHOT_linux_jre.zip
or
https://github.com/jianlins/ehost/releases/download/1.3.1-SNAPSHOT/eHOST_1.31-SNAPSHOT_win_jre.zip

## Configuration

It requires a workspace directory with:

annotationadmin.xml

```
<?xml version="1.0" encoding="UTF-8"?><catalog><server url="localhost" port="8080"/></catalog>
```

and eHOST.sys

```
[CONCEPT_LIB]


[ANNOTATOR]


[ENABLE_DIFF_BUTTON]
false

[ANNOTATOR_ID]
PHS-eDRIS

[LATEST_MENTION_ID]
10000

[MASK]
100011

[UMLS_USERNAME]


[UMLS_PASSWORD]
NOPASSWORD

[WORKSPACE_PATH]
/home/ubuntu/SemEHR/structuredreports/src/ehost

[OracleFunction]
true

[RESTFUL_SERVER]
false
```

## Projects

Project directories should have 3 subdirectories: `config`, `corpus` and `saved`

The `config` directory should contain `projectschema.xml`. If it doesn't then one will be
created. Whether or not one exists, when eHOST reads the annotations it will add any
mentionClasses into the projectschema if they don't already exist.

The `corpus` directory contains the plain text documents.

The `saved` directory contains the knowtator.xml files. When you make changes to
annotations you must click the Save button. At that point _all_ the XML files are
rewritten.
