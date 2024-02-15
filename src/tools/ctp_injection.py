#!/usr/bin/env python3
# Sends a messages to CTP to anonymise the given dicom file.
# Usage:  default.yaml "project" file.dcm
# Requires a version of smiRabbit which omits the timestamp
# so CTP doesn't get confused by a 32-bit integer when it expects 64.
import os
import sys

import smiRabbit
import yaml

yaml_file = sys.argv[1] # eg. $SMI_ROOT/configs/smi_dataExtract_abrooks_test.yaml
project   = sys.argv[2] # eg. abrooks_test
dcm_file  = sys.argv[3] # and on...

with open(yaml_file) as fd:
  yaml_dict = yaml.load(fd)
  for dcm_file in sys.argv[3:]:
    smiRabbit.send_CTP_Start_Message(yaml_dict, dcm_file, project, project)
