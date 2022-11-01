# Sample Structured Reports

Creating a test dataset of Structured Reports.

Summary:

* Use `./rdmp_csv_to_sample.py` to convert the BadMedicine CSV files into `sample_SR.csv`
* Use `./sample_SR.sh` to create DICOM files based on that CSV
* Use `./mtsamples_ihi_uids.py` to rewrite the mtsamples meta .json files
* Then you can add the mtsamples files to the annotation database

## Creating a SR in a DICOM file

The tool `sample_SR.py` can create a SR in DICOM format based on the template
stored in `sample_SR.json`. It adds custom UIDs (SOPInstance,Series,Study),
random patient and doctor names, random address, etc.

## Usage

To create a single SR in DICOM format.

```
  -v, --verbose         Verbose
  -o OUTPUT, --output OUTPUT
                        Output DICOM filename, default sample_SR.dcm
  -j JSON, --json JSON  Input JSON version of DICOM, default sample_SR.json
  -t TEXT, --text TEXT  Text body of report, default is a random document
                        from ../data/mtsamples_ihi_docs/doc????.txt
  --dirs                Create output directories based on date
  --dirs0               Create output directories based on date with leading zeros
  --sopid SOPID         SOPInstanceUID
  --studyid STUDYID     StudyInstanceUID
  --seriesid SERIESID   SeriesInstanceUID
  --patientid PATIENTID
                        PatientID
  --contentdate CONTENTDATE
                        ContentDate, SeriesDate and StudyDate, YYYY-MM-DD
  --modalities MODALITIES
                        Modalities (should include SR)
```

## Batch usage

To create a random set of SRs in DICOM format.

Use `sample_SR.sh` to create a DICOM file for every row in the
CSV file `sample_SR.csv`

The CSV file has the header
`id,SOPInstanceUID,SeriesInstanceUID,StudyInstanceUID,PatientID,ContentDate,ModalitiesInStudy`

The output DICOM files will have the filename *SOPInstanceUID*.dcm

The text will be randomly selected from the set of documents in
`../data/mtsamples_ihi_docs/` but if you want a consistent
document each time then use the `id` by adding
`-t ../data/mtsamples_ihi_docs/doc$(printf %04d $id).txt`

The script then runs the anonymiser as a test, and the output is
SOPInstanceUID.anon.dcm

The script then extracts the text, and the output is
SOPInstanceUID.anon.txt

You should manually inspect the text output to ensure it has
redacted with XXX appropriately.

# Annotation database file

If you want to use the same UIDs from the CSV file with the
mtsamples documents in the annotation database then use the
`mtsamples_ihi_uids.py` script to rewrite the JSON files in the
`mtsamples_ihi_meta` directory.

Usage: `./mtsamples_ihi_uids.py`

It reads the CSV file `sample_SR.csv`
and updates the JSON files in `../data/mtsamples_ihi_meta/`

# Creating the sample_SR.csv file

If you have used BadMedicine to create three CSV files:
`image.csv`, `series.csv` and `study.csv` then you can create
`sample_SR.csv` using the program `rdmp_csv_to_sample.py`
which creates one SR record per series, uses the SeriesInstanceUID,
looks up the corresponding PatientID and StudyInstanceUID, and
creates a fake SOPInstanceUID. Now you can rewrite the meta files
using this new CSV file before importing them into the database.

Usage: `./rdmp_csv_to_sample.py`

It reads the three CSV files as above and writes `sample_SR.csv`
