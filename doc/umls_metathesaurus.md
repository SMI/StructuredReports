# UMLS Metathesaurus

## Introduction

The query expansion code requires a local copy of the UMLS database,
and the code which maps SNOMED codes to UMLS concepts also requires it.

NOTE! The UMLS CANNOT be redistributed or used without an agreement.

NOTE! The 2019 version of the UMLS database must be used for two reasons:
* the annotation creation part of SemEHR uses the 2019 version so it makes
sense to keep the concepts identical
* the 2021 version of the UMLS removed the relationships from the MRREL file
and the replacement MRHIER file is not so useful

## Creation

Download the UMLS metathesaurus (warning, needs 40GB space!). Unpack:
```
unzip umls-2019.zip
cd 2019*
unzip 2019*-1-meta.nlm
unzip 2019*-2-meta.nlm
cd 2019*/META
gunzip *.gz
cat MRCONSO.RRF.a?   > MRCONSO.RRF
cat MRHIER.RRF.a?    > MRHIER.RRF
cat MRREL.RRF.a?     > MRREL.RRF
cat MRSAT.RRF.a?     > MRSAT.RRF
cat MRXNS_ENG.RRF.a? > MRXNS_ENG.RRF
cat MRXNW_ENG.RRF.a? > MRXNW_ENG.RRF
cat MRXW_ENG.RRF.a?  > MRXW_ENG.RRF
wget https://lhncbc.nlm.nih.gov/ii/tools/MetaMap/Docs/SemanticTypes_2018AB.txt
wget https://lhncbc.nlm.nih.gov/ii/tools/MetaMap/Docs/SemGroups_2018.txt
```

Convert the useful parts of the database to our own format CSV files.
These have a useful selection of columns and also reformat the rows so,
for example, the Narrower Concepts are all listed in a single row for
each concept rather than as multiple rows.


```
./umls_to_csv.py [-h] [--sources SOURCES] [--chd] [--test TEST]
  --sources SOURCES  comma-separated list of sources default MTH,SNOMEDCT_US
  --chd              whether to include CHD (child) relationships, default True
  --test TEST        CUI to display narrower concepts, default C0205076
```

There is an option to specify whether the relationships should be filtered
to include only those defined in the Metathesaurus or in SMOMED.
By default both of those are included. This means that relationships
defined by other vocabularies are ignored. You can choose to filter only
to MTH or only to SNOMEDCT_US or both using
```
umls_to_csv.py --sources MTH
umls_to_csv.py --sources SNOMEDCT_US
umls_to_csv.py --sources MTH,SNOMEDCT_US
```

The difference, as an example using concept C0205076 (Chest Wall) is:
* MTH - only has 1 child concept, fully expands to 2 children
* SNOMED - has 16 child concepts, fully expands to 2283 children
* both - same 16 child concepts, fully expands to 8075 children

There are two types of parent/child relationship:
* Broader/Narrower
* Parent/Child

Honghan thinks only Narrower is needed but the UMLS people say:
* RB/RN are generally used when the relations are not part of a broader hierarchy.
* PAR/CHD relations are generally part of a hierarchy. There may be some exceptions to this. 

The option `--chd` can be used to disable the inclusion of Child relations,
as the default is to include them.

```
umls.py --cfg . --csvs SNOMED/
umls.py --cfg . --csvs MTH/
umls.py --cfg . --csvs MTH+SNOMED/
```

# Input RRF files

N.B. you can read the 
## SemGroups_2018.txt

Maps a semantic type (tui) to a semantic type group
i.e. groups together related tui into a set
`Group|GroupName|Type|TypeLabel`
eg. `ACTI|Activities & Behaviors|T052|Activity`


## MRSTY.RRF

Maps a concept to a semantic type
`cui|tui|stn|sty|atui|cvf...`
eg. `C0000005|T116|A1.4.1.2.1.7|Amino Acid, Peptide, or Protein|AT17648347|256|`

## MRCONSO.RRF

Maps from concept (cui) to other vocabularies

```
cui|lang|ts|lui|   stt|sui|IsPref|aui      |saui    |scui|sdui|sab|tty|code|str|srl|suppress|cvf
```

e.g.

```
C0205076|ENG|S|L0248726|PF|S2717960|N|A32395146|        |C62484||NCI_caDSR|SY|C62484|Chest Wall|0|N||
C0205076|ENG|S|L0248726|PF|S2717960|Y|A26648386|        |M0407552|D035441|MSH|ET|D035441|Chest Wall|0|N|256|
C0205076|ENG|P|L0780053|PF|S0836022|N|A3108835|503946010|78904004||SNOMEDCT_US|PT|78904004|Chest wall structure|9|N|256|
C0205076|ENG|S|L0248726|VO|S0282525|Y|A2895894|130920016|78904004||SNOMEDCT_US|SY|78904004|Chest wall|9|N|256|
```

## MRREL.RRF

Relationships between CUIs
```
cui1    |aui1     |typ1|rel|cui2    |aui2    |typ2|rela|rui|srui|sab|sl|rg|dir|suppress|cvf
```

e.g.
```
C0000005|A13433185|SCUI|RB|C0036775|A7466261|SCUI||R86000559||MSHFRE|MSHFRE|||N||
```



# Output CSV files

Note that the files are pipe-separated so that the columns can contain
commas more easily.

## cui.csv

Maps CUI (concept id) to TUI (semantic type id), and also gives
the TUI group names and a label (description) of the CUI.  The CUI
can have several semantic types so they are comma-separated.
The source file (MRCONSO) has multiple rows per CUI so the
preferred label is chosen from LAT='ENG' and TS='P' and STT='PF'
and ISPREF='Y' [ref](https://list.nih.gov/cgi-bin/wa.exe?A2=ind1910&L=UMLSUSERS-L&P=R655)

```
cui|tui|tuigroup|cuilabel
C0000005|T116,T121,T130|CHEM,CHEM,CHEM|(131)I-MAA
```

(In practice the 3 group names are identical so only CHEM is output)

## rel.csv

Relationship between CUI1 and CUI2 with the implied meaning "has",
i.e. cui1 has a narrow (RN) concept cui2. The list of narrower
concepts is comma-separated.

```
cui1|has|cui2
C0000039|RN|C0043950,C0615231,C3253442,C3885037,C0621533,C0216971,C1611431,C0381030,C4489915,C1310941
```

## snomed.csv

Map a SNOMED code to a CUI. If there were multiple CUIs only one was chosen.
```
snomed|cui
100000000|C0308478
```

## sty.csv

Describes a Semantic Type. The identifier TUI is a member of a group of similar
types tuigroup, and the group has a label tuigrouplabel. This is used to find out
if a concept is related to other concepts that also share a simlar Semantic Type,
i.e. their types are both members of the same Semantic Group.

```
tui|tuigroup|tuigrouplabel
T001|LIVB|Living Beings
```

# Load into PostgreSQL

Use this script to load theresulting CSV files into a database:

```
./umls_create_postgres.py
```

## PostgreSQL tables

Schema: umls
Permission: granted to semehr_user, and semehr_admin.

```
CREATE TABLE umls.cui(cui varchar(16), tui varchar(99), tuigroup varchar(99), cuilabel text);
CREATE INDEX icui ON umls.cui (cui);
CREATE TABLE umls.rel(cui1 varchar(16), has varchar(4), cui2 text);
CREATE INDEX icui1 ON umls.rel (cui1);
CREATE TABLE umls.snomed(snomed text, cui text NOT NULL);
CREATE INDEX isnomed ON umls.snomed (snomed);
CREATE TABLE umls.sty(tui varchar(8), tuigroup varchar(8), tuigrouplabel varchar(99));
CREATE INDEX isty ON umls.sty (tui);
```
