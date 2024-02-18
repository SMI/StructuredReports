# Annotation creation

There are five scenarios for creating annotations:

- standalone, for one or more text documents
- standalone, for one or more DICOM Structured Reports
- batch processing of DICOM SRs
- as part of the SMI data load pipeline
- on demand as part of the SMI data extraction pipeline

The input to the annotation process is a plain text document.
It should already have been anonymised. In theory there is some
value to leaving the names intact, as the NLP algorithm may be
able to identify names vs dates and draw better conclusions from
the context. However the problem with doing anonymisation after
is that there is no process for anonymising annotations. There
may be fragments of PII stored in the annotation structure which
the anonymisation process is not (yet) able to handle.

The output from the process leaves the original document untouched
and creates a JSON-format document containing a list of concepts.
These items are useful as-is, and could be passed onto researchers
if that was what they wanted.

These items can be ingested into the annotation database to allow:

- cohort builders to perform a search of all SRs for specific concepts or annotations so that they can build a cohort for image requests
- researchers to perform a search of all SRs for specific concepts in context so that they can access patient reports about specific phenotypes

The annotation algorithm is currently performed by the CogStack-SemEHR
annotator, although a similar one might be MedCat. It should be possible
to replace the annotator if one was found to perform much better.
That would of course mean the whole database would need to be
repopulated; it would not be possible to mix the two outputs.

## Standalone document annotation

The first (optional) step is to anonymise the documents:

```
semehr_anon.py -i txt_dir -o anon_dir [--xml]
```


The annotation step can be performed with:

```
semehr_annotate.sh -i anon_dir/ -o annot_dir/
```

Input files must be named `*.txt` and output files will be named similarly `*.json`.
It requires a config file specified with `-c` unless CogStack-SemEHR is in a
well-known location typically `/opt/semehr/CogStack-SemEHR`

## DICOM SR annotation

This is similar to Standalone document annotation but with a preceding
step of extracting the text from a DICOM file. Also supported is
extracting the text from a MongoDB database (where the tags are stored
in SMI format).

Use the `CTP_DicomToText.py` script to extract the text, for example from MongoDB in SMI extract all documents with metadata for a given StudyDate:

```
CTP_DicomToText -y dataLoad.yaml -y dataExtract.yaml \
    -i <StudyDate> \
    -o txt_dir/  -m meta_dir/
```

## Load annotations into database

See a separate document for the preparation of the database tables.

Use this script to load annotations into PostgreSQL:

```
semehr_to_postgres.py -j annot_dir/ -t txt_dir/ -m meta_dir/
```

The `annot_dir` is the directory of annotations in JSON format
as produced by `semehr_annotate.sh`.
The `txt_dir` is the directory of corresponding text files
which will be added to the database alongside their annotations.
It could be `anon_dir` from `semehr_anon.py` if you want to
store anonymised versions.
The `meta_dir` is an (optional) directory of corresponding metadata
files in JSON format giving information like
`"SOPClassUID",
  "SOPInstanceUID",
  "StudyInstanceUID",
  "SeriesInstanceUID",
  "ContentDate",
  "ModalitiesInStudy"`
These files could be produced by extracting the information from
DICOM files or a MongoDB database. See `CTP_DicomToText.py`

## SMI data load pipeline

Currently the process of loading annotations from DICOM SRs
is done manually on a per-StudyDate basis using the script
`mongo_semehr_postgres.sh`.

The annotation database is completely separate from the data load
pipeline, in that the data load has no dependencies on the database
at the moment. However when new DICOMs are added to the archive
and the data load pipeline processes them it would be useful to have
the annotations created at the same time. The pipeline currently
operates on a per-DICOM basis, i.e. the microservices process one
DICOM at a time and gain speed by having multiple processes in
parallel (on one or more hosts). The annotation creation works best
when given many documents together, because it has a large start-up
cost (loading dictionaries, etc). It also does not require access to
the original DICOM files, and can work purely from the MongoDB database,
because the required text is part of the "metadata" for SRs. For these
reasons it might make sense to have the annotation process run
separately on a batch, say all SRs for one particular date. This would
assume that the data load pipeline would process DICOMs in date order
and could trigger the annotation at the end of each date.

## SMI data extract pipeline

If there is a requirement for annotations to be delivered during an
extraction there are some options.

- create the annotations during extraction. The CTP Anonymiser already has
  to call an external program to perform SR anonymisation so annotation could
  also be done at this time. That would leave additional files outside the
  pipeline, so the IsIdentifiable step and Reporting step would not see them.
  It would be possible to pass the annotations through IsIdentifiable but the
  output would not be any different because the text is already checked when
  it's put back into the DICOM. The main problem with doing annotation this way
  is that it's done per-document, but the start-up overhead of annotation
  (loading dictionaries, etc) makes it more efficient to annotate many documents
  together. The advantage is that improvements to the annotation algorithm would
  be made available to subsequent extractions.
  The main modification to the pipeline would be:
  - modify CTP or CTP_SRAnonTool to perform the annotation
  - modify the reporting to know about the extra files
  - make sure the extra files are copied to the researcher
- retrieve stored annotations from a database. A similar process to the above,
  except that the overhead of creating annotations is skipped. However it does
  require that access to the database be granted, and the database is currently
  in a PPZ.

# SemEHR annotation

## Customised dictionaries

Using a customised dictionary can be useful to add additional
entries into the document annotation, over and above those
defined by bio-yodie itself.

Phenotypes are defined in bio-yodie/finalize/supplemental-gazetteer
diseases.def
using .lst files which contain
`filename:major_type:minor_type`
where the filename contents is a list of words or phrases.
Lothian dermatology uses this to classify words into urgent/non-urgent minor_types.
major_type is the study name eg. LothianDerm
so when you convert to eHOST you say study name and it will report the appropriate annotations with phenotype matching major_type,
ie. the words matching minor_type will be highlighted.

## Troubleshooting

Check which version of bio-yodie is used. The path `bio-yodie-1-2-1` is hardcoded. However you need to download the full-size version from Honghan.

`Failed to do SemEHR process [Errno 2] No such file or directory: '/home/ubuntu/SemEHR/data/study/study.json'`
Just comment out the study in the config. (Check what the study config does?)

`output_docs` has `stroke_study` annotations - why?
Because of the supplemental-gazetteer files you left in bio-yodie.
The study annotations can be ignored if you've already created them in the master database.

nothing in semehr_results
Because documents needed to be called %s.txt - fix the template in the config file

run in PICTURES vm - millions of docanalysis lines like this:

```bash
docanalysis(587) root 2021-07-05 15:40:19,789 INFO to be developed [2558, 2573] ruled by hypothetical_filters.json
```

see above

also errors like this:

```bash
docanalysis(587) root 2021-07-05 15:40:19,810 INFO very slow [2662, 2671] ruled by hypothetical_filters.json
    error doing <function analyse_doc_anns_file at 0x7fd442960f70> on /run/user/1000/semehr/tmp_semehr_run.sh_31062/output_docs/doc2299.json
    'cmp' is an invalid keyword argument for sort()docanalysis(587) root 2021-07-05 15:40:19,811 INFO knee [1285, 1289] ruled by not_mention_filters.json
```

Fixed the source code to use a different cmp, see the repo commits
