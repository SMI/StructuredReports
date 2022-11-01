#!/usr/bin/env python3
# A text filter which replaces DICOM tags by their textual label.
# eg. to find the SeriesInstanceUID from a DICOM file:
# dcm2json file.dcm | dicom_tag_lookup.py | jq '..|.SeriesInstanceUID|.Value'
# Usage: -k keeps the numeric value of the tag in the output

import re
import sys
from pydicom.datadict import keyword_for_tag

keep_numeric_string = True if len(sys.argv)>1 and sys.argv[1] == '-k' else False

# ---------------------------------------------------------------------
def dicom_tag_subst(fd_in, fd_out):
  for line in fd_in:
    for match in re.findall('[0-9A-Fa-f]{4},{0,1}[0-9A-Fa-f]{4}', line):
      label = keyword_for_tag(int(match.replace(',', ''), 16))
      if label != '':
        line = re.sub(match, label, line) if not keep_numeric_string else re.sub(match, match+'='+label, line)
    print(line, end='')

# ---------------------------------------------------------------------
if __name__ == "__main__":
  dicom_tag_subst(sys.stdin, sys.stdout)
