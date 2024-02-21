# Annotation

Annotation is the process of parsing Structured Reports using NLP to find
"concepts" which are words and phrases that refer to body parts, drugs,
treatments, etc. These can be stored in a database and searched using a
web-based user interface.

Two databases are described below, MongoDB and PostgreSQL. Support for
populating both has been tested but it was determined that PostgreSQL
would be selected for use within SMI, so the query API does not support
MongoDB.

## Requirements

```
jq
```

# Ancillary data

Download:

- https://git.ecdf.ed.ac.uk/SMI/data.git

## Install the required software

Please review the script before running it!

```
cd StructuredReports/src/tools
./install.sh
```

The installation paths are configurable, and you can use symbolic links
to keep the master copies on a shared/NFS location, but a suggested configuration is:

```
/opt/gcp/bio-yodie-1-2-2  -> should contain bio-yodie-resources, gazetteer-en, etc
/opt/gcp/gate             -> should contain GAPE.app, gate.exe, etc
/opt/gcp/gcp-2.5-18658    -> should contain gcp.jar, etc
/opt/semehr/CogStack-SemEHR -> the checked-out repo
/opt/semehr/data          -> temporary config and data
```

(In hindsight the `gcp` directory should be inside `/opt/semehr`)

## Initialise the MongoDB database

Create a 'root' user in the admin database. Create a 'semehr' user with read/write access to the 'semehr' database.
Please review the scripts before running them!

```
cd StructuredReports/src/tools
mongo ./mongo_init_01.js  # create the root user
./mongo_init_02.sh        # configure mongodb service
./mongo_init_03.sh        # create the semehr user
```

## Initialise the PostgreSQL database

Please review the script before running it!

```
cd StructuredReports/src/tools
./postgres_init_01.sh     # create users, tables, indexes
```

## Extract the sample documents

The CSV file is extracted into separate documents in `../data/mtsamples_ihi_docs/` using:

```
./mtsamples_ihi_extract.py
```

## Source the virtual environment

```
source /opt/semehr/virtenv/bin/activate
```

## Anonymise a directory of text documents

This is optional for the example because there's nothing to anonymise in these documents, but
export SMI_LOGS_ROOT=.
export PYTHONPATH=/path/to/Smi_Common_Python # if SmiServices is not yet in your virtualenv
./semehr_anon.py -all -i input_dir -o anon_dir --xml

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
# Count the number of records having the given ContentDate
./semehr_to_postgres.py --query-contentdate 2020-10-05 --count
```

## Test the API

The script `CogStack-SemEHR/RESTful_service/test_api.py` runs a set of queries.

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
# Connect to database
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

- which CUIs are actually present in the database (so users know they do not
  need to search for those which are never used, and the query expansion can do likewise),
- how often each one occurs (so users know which CUIs are common and which are rare)

The table schema is `cui: varchar (primary key), count (bigint)`

This table is currently only updated during initial database population
by `semehr_to_postgres.py` but not afterwards if a record is updated or
deleted. It is only meant to serve as a helpful cache of CUIs not as a
primary record of data holdings.

Show the number of unique CUIs in the database:

```
SELECT COUNT(*) FROM semehr.cui_count;
-- currently 93,517 for 2010 to 2018
```

Show the total number of annotations (instances of a CUI) in the database:

```
SELECT SUM(count) FROM semehr.cui_count;
-- 918,340,602 for 2010 to 2018, nearly 1 billion,
-- approx 100 million per year.
```

A simple query to show the most common CUIs, translated to common name:

```
SELECT umls.cui.cuilabel, semehr.cui_count.count
 FROM  semehr.cui_count INNER JOIN umls.cui
  ON   umls.cui.cui = semehr.cui_count.cui
 ORDER BY semehr.cui_count.count DESC;
```

That requires the umls schema and tables be populated, see the
CogStack-SemEHR repo for details.

## Table: cui_sop

The `cui_sop` table simply records the SOPInstanceUID for a given CUI,
with columns `cui` and `SOPInstanceUID`. Every CUI found in every
document will be added to this table (it will grow very large).
This is an alternative way of getting the information which is more
properly held in semehr_results annotations cui array.
There is no primary key for performance reasons because it would have
to be on both columns. There is an index on the cui column.
The intended use is to find all documents which contain a given CUI,
i.e. `select SOPInstanceUID from semehr.cui_sop where cui = 'Cnnn';`
There will be billions of rows but hopefully this will be faster to
query than the indexed array (see below).
Warning: having no primary key or unique constraint means it's possible
to have duplicate rows. The insert program won't insert duplicates
(it deduplicates before insert) but there are no checks to prevent
the same document being inserted twice. There's no index on SOPInstanceUID
so no easy way to check - you'll have to pick a CUI and look through the
list of returned documents. In short: make a note of what has been
inserted and don't do it twice.

## Table: semehr_results

The `semehr_results` table contains the (anonymous) documents, their metadata,
and the annotations which records the CUIs of each concept found within. The
primary key is the `SOPInstanceUID` which is unique for each and every DICOM.
The only other column is `semehr_results` which is a JSONB document containing
these elements which are created by the SemEHR Annotator:

- `annotations`, an array
- `sentences`, an array
- `phenotypes`, an array
- `redacted_text`, a text field being the body of the document
  plus these elements which are created from the DICOM database by `CTP_DicomToText`:
- `SOPInstanceUID`, another copy of the unique id
- `SOPClassUID`, the type of Structured Report
- `StudyInstanceUID`, the Study id
- `SeriesInstanceUID`, the Series id
- `ContentDate`, the date of the report
- `ModalitiesInStudy`, related DICOM modalities, eg. CT or MR
- `PatientID`, # this one will be mapped from CHI to EUPI

The redacted text can be searched but this would be
slow and the intention is to use annotations for better results.
A sample query might be
`SELECT sopinstanceuid, semehr_results->'redacted_text' FROM
semehr.semehr_results WHERE semehr_results->>'redacted_text'
LIKE '%chest%';`
The text in `str` is now indexed using two different methods
(`gin_trgm_ops` index, and `to_tsvector` indexing); your query
would have to contain the same syntax as the index for it to be used.

The Content Date is stored in DICOM format YYYYMMDD
but is indexed as a PostgreSQL date so it can be searched.

The annotations array has elements like this:

- `start`, `end`, the character offsets into `redacted_text`
- `str`, the original text string
- `id`, an identifier for this annotation
- `negation`, whether affirmed or negated
- `temporality`, whether recent or historical
- `experiencer`, whether the patient or other
- `sty`, the semantic type of this annotation
- `cui`, the concept identifier
- `pref`, the preferred text of this cui (a synonym of str)
- `study_concepts`, an array
- `ruled_by`, an array how this concept was identified

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

These can speed up any queries on the annotations array, such as this:
(`@>` means 'contains' and note the array notation in the query):

```
SELECT * FROM semehr.semehr_results WHERE semehr_results->'annotations' @> '[ { "cui": "C0205076", "negation": "Affirmed" } ]'::jsonb;
```

However the `@>` contains operator only performs exact string matching. This is useful for `cui` but for text like `pref` it is less useful.

One way is to pull out every array element which then allows LIKE queries:

```
SELECT anns FROM jsonb_array_elements(semehr_results->'annotations') anns WHERE anns->>'str' LIKE "chest"
```

That is more difficult to index directly because Set Returning Functions cannot be used in an index.
However, it is possible to create a custom function and use that in an index.
That function can return an array because postgresql supports arrays as column values.
This makes sense for `cui` because the array query operators such as `@>` work well.
For strings it is still less useful as LIKE may not work well on an array of strings.
The solution is for the custom function to concatenate all strings in the array into a single string.
This means that all `pref` strings in the annotations array become a single string, which is useful
because it is easy and quick to search a single string and a match in any of the `pref` strings
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
(`@>` means 'contains' for JSON and `&&` means 'contains any of' for arrays)

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

Note that the actual queries made to the database by the annotation server
are more complex, especially if the query includes additional attributes such
as `experiencer`, `negated` or `temporality`. In this case the first part of
the query searches for the CUIs using the `&&` ARRAY notation, to get any
documents which contain any of the CUIs. The second part of the query
(`AND`ed to the first part) then narrows it down by specifying the attributes
that must match each particular CUI using the `@>` JSON notation.
Also filters are added such as by modality or date range.

```
 annotation_array_as_text_array(semehr_results, 'cui') && ARRAY['C0205076']
 AND (semehr_results->'annotations' @> '[{ 'cui':'C0205076', 'temporality':'recent' }]'
 AND (regexp_split_to_array(semehr_results->>'ModalitiesInStudy', '\\\\') && ARRAY['CT','MR'])
 AND (cast_to_date(semehr_results->>'ContentDate') BETWEEN {YYYYMMDD} AND {YYYYMMDD}) "
```

# References

- https://www.postgresql.org/docs/14/functions-json.html
- https://www.postgresql.org/docs/14/functions-array.html
- https://scalegrid.io/blog/using-jsonb-in-postgresql-how-to-effectively-store-index-json-data-in-postgresql/
