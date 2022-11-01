#!/bin/bash
# Install, configure and test the DICOM SR anonymisation


# Install the software required for anonymising DICOM files

mkdir -p tmp.anon
cd tmp.anon

# Download the repos

if [ ! -d SmiServices ]; then
	git clone https://github.com/SMI/SmiServices
fi
if [ ! -d CogStack-SemEHR ]; then
	git clone -b smi-branch https://github.com/SMI/CogStack-SemEHR
fi
#if [ ! -d StructuredReports ]; then
#	git clone https://github.com/SMI/StructuredReports
#fi

# If you want the pre-built Python code

if [ ! -f SmiServices-4.0.0-py3-none-any.whl ]; then
	wget https://github.com/SMI/SmiServices/releases/download/v5.2.0/SmiServices-5.2.0-py3-none-any.whl
fi

# Create a virtual environment

if [ ! -d venv ]; then
	python3 -m virtualenv -p /usr/bin/python3 --system-site-packages venv
fi

source venv/bin/activate

# Install dependencies

if [ ! -d venv/lib/python3*/site-packages/SmiServices ]; then
	pip3 install SmiServices-5.2.0-py3-none-any.whl
fi

# Use executables from SRAnonTool

if [ ! -f venv/bin/CTP_SRAnonTool.sh ]; then
	cp SmiServices/src/applications/SRAnonTool/*.{py,sh} venv/bin
fi

# Initialise test

export SMI_ROOT=$(pwd)/SmiServices
export SMI_LOGS_ROOT=$(pwd)
# Mirror the layout inside the safe haven
mkdir -p $SMI_ROOT/configs
cp SmiServices/data/microserviceConfigs/default.yaml $SMI_ROOT/configs/smi_dataLoad_mysql.yaml
cp SmiServices/data/microserviceConfigs/default.yaml $SMI_ROOT/configs/smi_dataExtract.yaml

# Expecting to find CogStack-SemEHR inside here, with a data directory inside it
semehr_dir=$(pwd)
mkdir -p $semehr_dir/data

# Run test

in=$(pwd)/SmiServices/src/applications/SRAnonTool/test/report10.dcm
out=$(pwd)/report10_anon.dcm
# Simulate having run CTP to anonymise the DICOM first:
cp $in $out
# Introduce some PII into the file otherwise nothing to anonymise!
# (replace the string "Baker" with "Walz" which is the patient name)
echo "00000d2d: 5761 6c7a 20" | xxd -r - ${in}
CTP_SRAnonTool.sh -d -v -s ${semehr_dir} -i ${in} -o ${out}

# Test
dcm2json ${out} | grep XXX
