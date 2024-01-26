# Anonymisation

Anonymisation is the process of detecting and removing PII (personally identifiable information).
The code here is for Structured Reports in DICOM format and is to be used in
conjunction with the SmiServices code inside a safe haven.

## Testing

Use the script `anon_init.sh` to install, configure and test the standalone
component for anonymising Structured Reports in DICOM format.

# Annotation

Annotation is the process of parsing Structured Reports using NLP to find
"concepts" which are words and phrases that refer to body parts, drugs,
treatments, etc. These can be stored in a database and searched using a
web-based user interface.

## Requirements

```
jq
```

## Install the required software

```
./install.sh
```

## Initialise the MongoDB database

Create a 'root' user in the admin database. Create a 'semehr' user with read/write access to the 'semehr' database.

```
mongo ./mongo_init_01.js
./mongo_init_02.sh
./mongo_init_03.sh
```

## Start a docker copy of PostgreSQL

```
sudo docker run -d --rm --name=pg -p 5432:5432 -e POSTGRES_PASSWORD=semehr postgres
```

## Initialise the PostgreSQL database

```
./postgres_init_01.sh
```

This creates a database `semehr`, schema `semehr`, table `semehr_results`.
It also creates roles `semehr_user` and `semehr_admin`, and users
`semehr` and `semehrapi`.

Note: you should edit the pg_hba.conf file for additional security.

Note: additional configuration will be required if you are using the
SemEHR REST API as that uses the UMLS tables.

## Extract the sample documents

The CSV file is extracted into separate documents in `../data/mtsamples_ihi_docs/` using:

```
./mtsamples_ihi_extract.py
```

## Source the virtual environment

```
source ~/SemEHR/virtenv/bin/activate
```

## Anonymise a directory of text documents

This is optional for the example because there's nothing to anonymise in these documents, but
export SMI_LOGS_ROOT=.
export PYTHONPATH=/path/to/Smi_Common_Python # if SmiServices is not yet in your virtualenv
./semehr_anon.py -i input_dir -o anon_dir --xml


## Run SemEHR on the sample document to get the semehr_results

```
./semehr_annotate.sh -i ~/SemEHR/structuredreports/src/data/mtsamples_ihi_docs/ -o ~/SemEHR/structuredreports/src/data/mtsamples_ihi_semehr_results/
```

## Import the semehr_results into the MongoDB database

```
export SMI_LOGS_ROOT=.
./semehr_to_mongo.py -j ~/SemEHR/structuredreports/src/data/mtsamples_ihi_semehr_results/
```

## Import the semehr_results into the PostgreSQL database

```
export SMI_LOGS_ROOT=.
./semehr_to_postgres.py --drop-table
./semehr_to_postgres.py -j ~/SemEHR/structuredreports/src/data/mtsamples_ihi_semehr_results/ -t ~/SemEHR/structuredreports/src/data/mtsamples_ihi_docs/ -m ~/SemEHR/structuredreports/src/data/mtsamples_ihi_meta/
./semehr_to_postgres.py --add-index
```

## Add more documents (copy existing ones with a new SOPInstanceUID)

```
./mtsamples_ihi_fake.sh
./semehr_to_postgres.py -j ~/SemEHR/structuredreports/src/data/fake_json/ -t ~/SemEHR/structuredreports/src/data/fake_txt/
```

## Run a query

```
./semehr_to_mongo.py
./semehr_to_postgres.py
# Query for a particular CUI
./semehr_to_postgres.py -q cui:C0205076
# Count the number of records having the given ContentDate
./semehr_to_postgres.py --query-contentdate 2020-10-05 --count
```

## Test the API

The script `CogStack-SemEHR/RESTful_service/test_api.py` runs a set of queries.

## Study-specific training

See the `nlp2phenome` repo.  The `safehaven_mini` branch was used in HIC
safe haven for a project. It has extra functions for stroke but useful for
others to do patient level inference.

A search is performed using a set of CUIs which are deemed to be relevant
to a particular study. The search results must include the redacted text.
A set of XML files is created from the semehr_results to go with the text.
Both are then used in eHOST to mark up annotations which were correct or
incorrect. eHOST then updates (all!) the XML files. The results are then used
to learn which annotations were useful and which were not.

The eHOST input needs xml, see `ann_conv.py` for `convert_csv_annotations`.

eHOST takes corpus and saved, filename of xml is just `.knowtator.xml` appended
to text filename. It will create a config file/dir if none given. Need to configure
two classes: ANN_IRRELEVANT or ANN_DISEASE or similar, and it will output those
in the saved xml using a `classMention` tag.

Use `run_learning` where `corpus` is the redacted text, `gold` is the xml.
It does 10 iterations of kfold. The performance metrics are in a CSV.
The output is two files: lm and model. lm is label metadata. model is
random forest. Both are binary serialised Python objects.
```
run_learning.py
```

Next time a search is performed the search results can be filtered using the
learned model to remove the ones which had poor annotations. It calculates p,
the probability, and if over a threshold the result is kept.
```
python predict_helper.py ./pretrained_models/stroke_settings/prediction_task.json
```

The `doc_inference` code is not needed because it's document-level inference
which, as there's one document per patient, is essentially patient-level inference.
```
python doc_inference.py ./pretrained_models/stroke_settings/doc_infer.json
```

## eHOST config

Download from `https://github.com/jianlins/ehost/releases/download/1.3.1-SNAPSHOT/eHOST_1.31-SNAPSHOT_linux_jre.zip`
Unpack the zip to get the executable `ehost-1.31-SNAPSHOT.jar`

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

* corpus is the text documents
* saved is the knowtator.xml documents

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

# Example code

Both MongoDB and PostgreSQL have a database called "semehr".
The username is "semehr" and the password is "semehr".
In MongoDB the collection is called "semehr_results".
In PostgreSQL the table is called "semehr_results" in the "semehr" schema, i.e. "semehr.semehr_results".
Each record/row/document consists of two items, "SOPInstanceUID" (a string being a unique identifier and primary key) and "semehr_results" (a dict containing "sentences", "annotations", etc). If available then a "PatientID" element will also be populated in each one.
Note that sentences and annotations are arrays of dicts.

Both databases are populated with 4999 sample documents.

## MongoDB

```
from pymongo import MongoClient, ASCENDING
from pymongo.errors import DuplicateKeyError
mongoHost = 'localhost'
mongoUser = 'semehr'
mongoPass = 'semehr' 
mongoDatabaseName = 'semehr'
mongoCollectionName = 'semehr_results'
# Connect to database
mongoConnection = MongoClient(host=mongoHost, username=mongoUser, password=mongoPass, authSource='admin')
mongoDb = mongoConnection[mongoDatabaseName]
mongoCollection = mongoDb[mongoCollectionName]
# Search for all documents having an annotation where featurename = "cui" featureval = "C0175252"
mongoCursor = mongoCollection.find( { "annotations" : { "$elemMatch": { featurename : featureval, 'Negation' : 'Affirmed' } } } )
for doc in mongoCursor:
    print(doc['annotations'][0]) # first annotation in this document
```

## PostgreSQL

```
import psycopg2
from psycopg2.extras import Json
Host = 'localhost'
User = 'semehr'
Pass = 'semehr'
DatabaseName = 'semehr'
Schema = 'semehr'
Table = 'semehr_results'
# Connecto to database
pgConnection = psycopg2.connect(host=Host, user=User, password=Pass, dbname=DatabaseName)
# Search for all documents having an annotation where featurename = "cui" featureval = "C0175252"
query_obj = [ { featurename: featureval, 'Negation': 'Affirmed' } ]
pgCursor = pgConnection.cursor()
pgCursor.execute("SELECT * FROM semehr.semehr_results WHERE semehr_results->'annotations'  @>  %s::jsonb;", (Json(query_obj),))
for (SOPInstanceUID, semehr_results) in pgCursor:
    print('Got one %s' % semehr_results['annotations'][0]) # first annotation in this document
pgCursor.close()
```

# PostgreSQL table schema

Note: all tables, indexes and functions reside in the `semehr` schema of the `semehr` database.

## Table: cui_count

The `cui_count` table contains a record of the frequency of each CUI,
so we can determine
* which CUIs are actually present in the database (so users know they do not
need to search for those which are never used, and the query expansion can do likewise),
* how often each one occurs (so users know which CUIs are common and which are rare)

The table schema is `cui: varchar (primary key), count (bigint)`

This table is currently only updated during initial database population
by `semehr_to_postgres.py` but not afterwards if a record is updated or
deleted. It is only meant to serve as a helpful cache of CUIs not as a
primary record of data holdings.

A simple query to show the most common CUIs, translated to common name:
```
SELECT umls.cui.cuilabel, semehr.cui_count.count
 FROM  semehr.cui_count INNER JOIN umls.cui
  ON   umls.cui.cui = semehr.cui_count.cui
 ORDER BY semehr.cui_count.count DESC;
```
That requires the umls schema and tables be populated, see the
CogStack-SemEHR repo for details.

## Table: semehr_results

The `semehr_results` table contains the (anonymous) documents, their metadata,
and the annotations which records the CUIs of each concept found within. The
primary key is the `SOPInstanceUID` which is unique for each and every DICOM.
The only other column is `semehr_results` which is a JSONB document containing
these elements which are created by the SemEHR Annotator:
* `annotations`, an array
* `sentences`, an array
* `phenotypes`, an array
* `redacted_text`, a text field being the body of the document
plus these elements which are created from the DICOM database by `CTP_DicomToText`:
* `SOPInstanceUID`, another copy of the unique id
* `SOPClassUID`, the type of Structured Report
* `StudyInstanceUID`, the Study id
* `SeriesInstanceUID`, the Series id
* `ContentDate`, the date of the report
* `ModalitiesInStudy`, related DICOM modalities, eg. CT or MR
* `PatientID`, # this one will be mapped from CHI to EUPI

The redacted text is not currently indexed or searched. This would be
slow and the intention is to use annotations for better results.

The Content Date is stored in DICOM format YYYYMMDD
but is indexed as a PostgreSQL date so it can be searched.

The annotations array has elements like this:
* `start`, `end`, the character offsets into `redacted_text`
* `str`, the original text string
* `id`, an indentifier for this annotation
* `negation`, whether affirmed or negated
* `temporality`, whether recent or historical
* `experiencer`, whether the patient or other
* `sty`, the semantic type of this annotation
* `cui`, the concept identifier
* `pref`, the preferred text of this cui (a synonym of str)
* `study_concepts`, an array
* `ruled_by`, an array how this concept was identified

# PostgreSQL indexing and queries

To index just a single (top-level) field from the JSON document (note it has to be in double brackets):
```
CREATE INDEX seriesinstanceuid ON semehr.semehr_results ((semehr_results->>'SeriesInstanceUID'));
```

That can be queried like this:
```
SELECT COUNT(*) FROM semehr.semehr_results WHERE semehr_results->>'SeriesInstanceUID' = '1.2.3.4.5';
```

The whole JSON document can be indexed with:

```
CREATE INDEX semehr_results_index  ON semehr.semehr_results USING GIN ((semehr_results) gin_trgm_ops);
```

A smaller index is on the annotations array only:

```
CREATE INDEX semehr_results_index  ON semehr.semehr_results USING GIN ((semehr_results->'annotations') gin_trgm_ops);
```

These can speed up any queries on the annotations array, such as this (note the array in the query):

```
SELECT * FROM semehr.semehr_results WHERE semehr_results->'annotations' @> '[ { "cui": "C0205076", "negation": "Affirmed" } ]'::jsonb;
```

However the `@>` contains operator only performs exact string matching. This is useful for `cui` but for text like `pref` it is less useful.

One way is to pull out every array element which then allows LIKE queries:

```
SELECT anns FROM jsonb_array_elements(semehr_results->'annotations') anns WHERE anns->>'cui' LIKE "chest"
```

That is more difficult to index directly because Set Returning Functions cannot be used in an index.
However, it is possible to create a custom function and use that in an index.
That function can return an array because postgresql supports arrays as column values.
This makes sense for `cui` because the array query operators such as `@>` work well.
For strings it is still less useful as LIKE may not work well on an array of strings.
The solution is for the custom function to concatenate all strings in the array into a single string.
This means that all `pref` strings in the annotations array become a single string, which is useful
because it is easy and quick to search a single string and the a match in any of the `pref` strings
would return the whole document anyway.

The functions can be defined like this:

```
create or replace function annotation_array_as_text(doc jsonb, fieldname text) returns text as $$
   select array_agg(x) from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x);
 $$ language sql strict immutable;

create or replace function annotation_array_as_text_array(doc jsonb, fieldname text) returns text[] as $$
   select array_agg(x) from (select jsonb_array_elements(doc->'annotations')->>fieldname) as f(x);
 $$ language sql strict immutable;
```

Those functions can be used to create an index and, if the same function is used in the query, then the index is used to speed up the query:

```
CREATE INDEX cui_as_array ON semehr.semehr_results USING GIN (annotation_array_as_text_array(semehr_results, 'cui'));
CREATE INDEX pref_as_text ON semehr.semehr_results USING GIN (annotation_array_as_text(semehr_results, 'pref') gin_trgm_ops);
```

used with queries:

```
SELECT count(*) FROM semehr.semehr_results WHERE annotation_array_as_text_array(semehr_results, 'cui') @> '{C1,C2}'; -- OR
SELECT count(*) FROM semehr.semehr_results WHERE annotation_array_as_text_array(semehr_results, 'cui') && ARRAY['C1','C2']; -- AND
SELECT count(*) FROM semehr.semehr_results WHERE annotation_array_as_text(semehr_results, 'pref') LIKE 'Chest Wall';
```

The `gin_trgm_ops` index type may not be best suited to indexing and searching the text in our case as we might not need the power of trigram search.
Try a specific `english` word index, which doesn't support substrings but does use word stemming and ignores stop words:

```
CREATE INDEX pref_as_text2 ON semehr.semehr_results USING GIN (to_tsvector('english', semehr.annotation_array_as_text(semehr_results, 'pref')));
```

and query it like this:

```
SELECT count(*) FROM semehr.semehr_results WHERE to_tsvector('english',semehr.annotation_array_as_text(semehr_results, 'pref')) @@ websearch_to_tsquery('english','Chest Wall');
-- websearch converts string A B into A & B which means both words, but anywhere in document
-- and converts "A B" into A <-> B which means next to each other
```
