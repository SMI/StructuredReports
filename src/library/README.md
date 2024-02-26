# SMI Python library

Some useful functions in Python

## Requirements

```
deepmerge
pika
pydicom
pymongo
PyYAML
xml.etree (comes with python)
mysql-connector-python (which requires six, protobuf, dnspython) for IdentifierMapper
```

## Installation

Run `python3 ./setup.py bdist_wheel` to create `Smi_Services_Python-0.0.0-py3-none-any.whl`

Run `python3 ./setup.py install` to install (including dependencies) into your python site-packages
(whether that be global or inside a current virtualenv).

## Testing

Test all modules:

```
pytest SmiServices/*.py
```

Test each module individually, for example:

```
python3 -m pytest SmiServices/Dicom.py
python3 -m pytest SmiServices/DicomText.py
python3 -m pytest SmiServices/StructuredReport.py
```
