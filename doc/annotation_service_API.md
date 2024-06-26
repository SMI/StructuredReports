# Annotation Service REST API

The REST API is provided by the [annotation service](annotation_service.md).
Its purpose is to allow querying the annotation database by concept
(represented by a UMLS concept id called a 'CUI') or free text.
The latter has less support, CUIs are the primary search term.
There is also the concept of using a mapping which is the use of a
user-specified name that expands to a list of CUIs.

A concept (CUI) can refer to a body part, disease, condition, drug,
treatment, etc and a metathesaurus (dictionary) is maintained by UMLS.
The dictionary contains mappings from SNOMED identifiers, so for
convenience the query API will accept a SNOMED id instead of a CUI.

A concept (CUI) can refer to an extremely specific part of the body
so there is the option of expanding a given CUI into a list of
related CUIs, all of them being 'children' (narrower) concepts.
As a simple example think of specifying the CUI for the eye,
and having it expanded to search for eye, retina, cornea, iris, etc.

## API calls

A list of API calls (note that if a trailing slash is shown below then it is mandatory):

```
/api/docs - return a list of documents (not useful)
/api/need_passphrase/ - returns true or false to indicate whether a passphrase is needed for all API calls
/api/check_phrase/PHRASE/ - returns true or false, checks if the password is correct
/api/doc_detail/DOCID/ - returns the annotations on the document
/api/doc_content_mapping/DOCID/MAPPING/
/api/search_docs/QUERY/ - search within documents
/api/search_anns/QUERY/ - search within annotations
/api/search_anns_by_mapping/QUERY/MAPPING/
/api/mappings/ - return list of mapping names, eg. ["mapping 1", "mapping 2"]
```

## Authentication

If a password is needed (`need_passphrase` returns `true`) then you can check a given
password using `check_phrase` which should return `true` if correct. After that all
API calls must have a password in the query string, for example `?passphrase=PHRASE`.
Note that `PHRASE` is the sha256-encoded version of the password. You can test this
on the command line with `printf "passphrase" | sha256sum`.

## jQuery callback syntax

The query string can have a `callback=` parameter if called from jQuery.
This is used by the `/vis/` web application.
Return values will be wrapped with the callback function name.

## Query API

The most common use of the API is to make a database query with `/api/search_anns`
followed by retrieving the annotations and content of a document with `/api/getDocDetail`.

The API has been extended for use within SMI by adding additional query terms.
Alongside the query terms are filtering terms which reduce the scope of the search
to specific modalities or a range of dates.

The query is encoded as a JSON object string, not a traditional HTML form.

The reason for doing it this way is because it has to be submitted as a GET query
string not a POST due to CORS (although see below). Also GET has a low limit on length.
The JSON format allows a much more flexible set of query terms.

Most items are optional. Optional fields should not be transmitted, so that the
server can determine a sensible default value.

```
/api/search_anns/term/?j=JSON - where JSON is a structure like this:

"terms" = [
  { "q" = "QUERY", (free text or comma-separated list of CUIs or SNOMED codes, possibly preceded by - to negate?)
    "qdepth" = N, (limit the query expansion to depth N)
    "qstop" = [ "Cnnnnn", ], (remove CUIs from the expanded list)
    "negation = "Any" or "Negated" or "Affirmed",
    "experiencer" = "Patient" or "Other",
    "temporality" = ["Recent" or "historical" or "hypothetical"]
  },
],
"filter" = {
  "start_date" = "YYYY-MM-DD",
  "end_date" = "YYYY-MM-DD",
  "modalities" = [ "CT", "MR", "US", "PT", "CR", "OT", "XA", "RF", "DX", "MG", "PR", "NM" ],
  "sopinstanceuid" = [ "nnn", ... ],
  "seriesinstanceuid" = [ "nnn", ... ],
  "studyinstanceuid" = [ "nnn", ... ]
},
"returnFields" = [ "SOPInstanceUID", "SeriesInstanceUID", "StudyInstanceUID", "PatientID" ]
```

Note that the JSON structure will obviously have to be a single line of text encoded
suitably for a GET URL.

Alternatively the query can be submitted using POST if it is large. The content
needs to be a dictionary containing "terms" at the top level along with optional
"passphrase", "filter" and "returnFields". The passphrase has to be in here and not in the URL.

All fields except "terms[q]" are optional (omit them rather than trying to provide a
default value, so that the API itself can choose a suitable default value).

The query terms for negation, experiencer and temporality should not be specified
unless necessary. In particular note the difference between `negation=Negated`,
which means that the query term must be present in a negative context, vs the
term not being mentioned in the document.

The returnFields typically is only used for returning the SOPInstanceUID but if more
than one field is requested then each row in the results will have an array of the
values in the same order as requested. (To be confirmed: the result could be a dict
instead to prevent confusion).

The CUI to search for is typically something like Cnnnnnnn where n is a digit,
eg. C0205076 (which is "Chest Wall"), but can also be a SNOMED code
which is a string of only digits. The given code will be expanded in the dictionary
to include all sub-codes. If given free-text then it will currently only be matched
against the 'pref' field in the database using a full-string case-sensitive match
(to be confirmed).

The date range will query the DICOM tag `ContentDate` (which is not the same as
`StudyDate` unfortunately).
Note that the date format in the query is "YYYY-MM-DD" but the date stored in the database
is in DICOM format which is YYYYMMDD. If any dates are returned they will be in DICOM format.

The modality will query the DICOM tag `ModalitiesInStudy` and will look for each of
the terms in the query list inside the list in the DICOM tag, i.e. if any of the given
list are found anywhere in the tag then it matches.

The uid lists will restrict the query to only the given instances.

The response is a dictionary of the form:

```
{
  "success": true,
  "num_results": 2,
  "results": [ ... ]
}
```

Each element of results will be a single string value, when the query requests a single element,
for example, if requesting SOPInstanceUID,
`"results": [ "1.2.3", "3.4.5", ... ]`
or will be a dictionary when the query requests multiple elements,
for example, if requesting SOPInstanceUID,SeriesInstanceUID,
`"results": [ { "SOPInstanceUID": "1.2.3", "SeriesInstanceUID": "3.4.5" }, ... ]`

## Error response

If an error occurs the response is:

```
{
  "success": false,
  "message": "..."
}
```

## Example

Use `--insecure` to ignore certificate errors with HTTPS. Use `sha256sum` to encode your password.

```
curl --insecure \
     --get \
     --data-urlencode 'passphrase=aa06b3414d1ef012810cff0cfa1e459318ebcdf033af6044bdde7533566b2c23' \
     --data-urlencode 'j={"terms":[{"q":"C0205076"}],"filter":{"start_date":"2017-01-01","end_date":"2017-01-03"}}' \
     https://localhost:8485/api/search_anns/x/
```

or using POST

```
curl --insecure \
     -X POST \
     -H "Content-Type: application/json" \
     -d '{"passphrase":"aa06b3414d1ef012810cff0cfa1e459318ebcdf033af6044bdde7533566b2c23","terms":[{"q":"C0205076"}],"returnFields":"SeriesInstanceUID"}' \
     https://localhost:8485/api/search_anns/x/
```

## Example with R

```
#install.packages('httr') # may need OS packages libssl-dev libcurl4-openssl-dev
#install.packages('digest')
#install.packages('jsonlite')
#install.packages('dplyr')
library(httr)
library(digest)
library(jsonlite)
#library(dplyr)

hostname="192.168.63.18"
port="8485"
api_url=paste0("https://", hostname, ":", port, "/api/")

# PicturesDevAB = https://20.68.25.9:8485/vis/
# curl -g -k 'https://20.68.25.9:8485/api/search_anns/C0205076/?j={"terms":[{"q":"C0205076"}]}'

# Allow insecure requests (as the certificate is self-signed)
httr::set_config(config(ssl_verifypeer = 0L))

# Check password
password="CHANGEME"
enc_pass=digest(password, algo="sha256", serialize=F)
need_pass=content(GET(paste0(api_url, "need_passphrase/")), as="parsed")
pass_ok=content(GET(paste0(api_url, "check_phrase/", enc_pass, "/")), as="parsed")

# Simple request for code C0205076 in January 2018
query_json = '{"terms":[{"q":"C0205076"}], "filter":{"start_date":"2018-01-01", "end_date":"2018-02-01"}}'
# More complex request
query_json = '
{
  "terms": [
    { "q": "C0205076", "negation": "Any" }
  ],
  "filter": {
    "start_date": "2018-01-01",
    "end_date": "2018-02-01",
    "modalities": [ "CT", "MR" ]
  },
  "returnFields": [ "SeriesInstanceUID" ]
}'
# Execute the query
rc <- GET(paste0(api_url, 'search_anns/json/'),
    query = list(j = query_json,
        passphrase = enc_pass))
# Check the response
http_type(rc)    # should be "application/json"
http_error(rc)   # should be FALSE
rcJsonText <- content(rc, as="text")
rcJsonText
rcJsonParsed <- content(rc, as="parsed")
rcJsonParsed
fromJSON(rcJsonText)
# You can see num_results, results, transactionId
# Results should be an array of document identifiers:
result_list <- rcJsonParsed$results
result_list[1]
result_list[2]
```
