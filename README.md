# StructuredReports

NLP work on DICOM Structured Reports.

The main work is done in CogStack-SemEHR; this repo is used mainly for
code and documentation to install and run it.

There are several aspects to the SR work:

- anonymisation of SRs (in text format)
- anonymisation of SRs (in DICOM format or from MongoDB)
- reviewing SRs for PII
- annotation (creating phenotype tags from text)
- training ML models to improve phenotype detection
- database to store annotations
- web service (REST API and sample web front-end) to search database
- web service interface to training process

## Anonymisation of text

The input format is plain text but by using a special input format
you can give some context to the anonymiser. For example you can
specify a PatientName so that the anonymiser will remove all references
to that name anywhere in the text, even if it would not have matched
any of the rules. See `sensitive_fields` in the config file.

The anonymiser will only anonymise text within specific sections of the
input document. These sections are defined in the config so can of course
be altered if you have a different input format. See `working_fields` in
the config file.

In both cases the sections are defined using double square brackets, eg.

```
[[Patient Name]] Thomas MacThomas
[[ContentSequence]]
The body of text to be anonymised.
```

### Anonymisation rules

See detailed document [here](./doc/anonymisation.md) which describes how the
rules work and how to modify them.

## Anonymisation of SRs in DICOM format or from MongoDB

The principle is to extract the text from the DICOM file, or from MongoDB,
and pass it into the anonymiser as above. The extraction process must create
the text format with appropriate sections as described above. Unfortunately
the format obtained from MongoDB is different from that obtained directly from
DICOM files so some code is needed to unify them.

The code for extraction/conversion is held in the SMIServices repo as
[SRAnonTool](https://github.com/SMI/SmiServices/tree/master/src/applications/SRAnonTool)
although there are two main components,
`CTP_DicomToText.py` which converts the SR to text ready for anonymisation,
and `CTP_XMLToDicom.py` which reconstructs a DICOM from redacted text.
The CTP in the name is because it is used as part of the CTP anonymisation process.
The XML in the name is because the anonymiser writes out an XML file
(`knowtator.xml`) which contains the character locations of the found PII.

The actual anonymisation is done by the code described in the previous section.

The SRAnonTool mostly uses a python package called
[SmiServices](https://github.com/SMI/SmiServices/tree/master/src/common/Smi_Common_Python)
which contains code for decoding SRs in DICOM format or from MongoDB.
See the `StructuredReport` and `DicomText` modules in particular.

## Reviewing SRs for PII

Any standard DICOM viewer with support for SRs can be used to view them,
such as MicroDicom on Windows and Weasis on Linux. However these tools do
not allow the user to review the text for PII. A simple GUI has been written
for this purpose, called `review_SR_report.py`.
It is designed to work with the report
produced by IsIdentifiable, to aid in the finding and reviewing of PII.

See the [review_SR_report](./doc/review_SR_report.md) document.

## Annotation of phenotypes in text

The annotation process refers to the creation of phenotype tags from a
block of text, for example taking a medical report and finding all mentions
of concepts such as diseases, drugs, treatments, etc. The output is a
file specifying the character location of the found concepts, each one
having a concept identifier taken from the UMLS Metathesaurus, a giant
medical dictionary. The dictionary contains terms taken from many other
ontologies, for example SNOMED codes are part of UMLS. The UMLS codes are
given concept identifiers known as CUIs and typically look like `C12345`,
for example `C0205076` refers to the Chest Wall.

See the [annotation creation](./doc/annotation_creation.md) document.

## Training ML models to improve phenotype detection

The training process is intended to improve phenotype detection.
A simple search in the annotation database for a concept, or set of concepts,
will return documents that may or may not be relevant to the study.
The relevance will depend on the context within the text where the
concepts were found. Given a 'representative' sample or subset of
documents, an expert researcher can mark up the found concepts as
relevant or not, and add reference to concepts which were missed.
This is the training process: selecting a subset of documents,
highlighting the useful concepts, having those concepts corrected in
a GUI (we use eHOST for this purpose), and deriving a Machine Learning
model. Once this model has been trained it can be applied to future
searches of the annotation database to improve the search results.

See the [annotation learning](./doc/annotation_learning.md) document.

## Database to store annotations

The annotation database stores anonymised documents and a set of
concepts which have been identified within, as described above.
The design of the database requires a schema such as:

- a primary key, being the DICOM identifier `SOPInstanceUID`
- the redacted text
- document metadata, such as DICOM Modality, Date, etc
  (not a duplication of what is in the MongoDB metadata database,
  but just enough to speed up searches using common filters)
- annotations, being an array of:
  - a concept identifier, eg. `C0205076` meaning Chest Wall
  - a concept type, eg. `Body Part`, or drug or disease
  - whether the concept is current, or a historical mention
  - whether the concept applies to the patient or to some other person
  - a reference to the actual words used in the document for this concept
  - a preferred text description of the concept

The database design requires indexes which can help speed up common
types of query, for example on the date, modality, and concept identifiers.
It is not expected that a free-text search will prove useful, after all
that is the purpose of annotating concepts.

See the [annotation database](./doc/annotation_database.md) document.
See also the [UMLS Metathesaurus](./doc/umls_metathesaurus.md) document.

## Web service (REST API and sample web front-end) to search database

The annotation database can be queried using a REST API. Based on this
different user interfaces can be provided, for example a web page used
in a web browser, or a plug-in to the RDMP cohort builder.

The API provides methods for performing a simple search, but also
for querying document contents, downloading documents, and simplifying
complex searches through the use of stored queries (known as mappings).

See the [annotation service](./doc/annotation_service.md) document.
See the [annotation service in docker](./doc/annotation_service_docker.md)
document if you want to create a Docker version.

## Web service interface to training process

The training process interface is an extension of the query REST API.
It provides methods for downloading document subsets in a form useful
with eHOST, accepting the corrected annotations and training a ML model.

See the [annotation eHOST](./doc/annotation_eHOST.md) document.

## Library

A collection of python modules, previously supplied as part of SmiServices.

See the [library](./doc/library.md) document.

## Tools

A collection of useful utilities, see the [tools](./doc/tools.md) document.

See also the [sample SR](./doc/sample_SR.md) document.

## Testing

See the [testing](./doc/testing.md) document.

## TODO

- [x] Web UI for eDRIS to query structured reports
- [ ] Web UI for researchers to do validation and iterative learning

## See also

The CogStack-SemEHR repo contains the anonymiser and the annotator:
https://github.com/SMI/CogStack-SemEHR

The nlp2phenome repo contains the annotation training code:
https://github.com/SMI/nlp2phenome

The SMI repo contains two separate things. The first is a shared Python library:
https://github.com/SMI/SmiServices/tree/master/src/common/Smi_Common_Python

The second is a set of programs for the extraction pipeline which can
anonymise SRs, but the programs can also be used standalone:
https://github.com/SMI/SmiServices/tree/master/src/applications/SRAnonTool
For example `CTP_DicomToText` is used in the annotation process.

The annotation tool `eHOST` is from https://github.com/chrisleng/ehost
but an improved version is from https://github.com/jianlins/ehost
