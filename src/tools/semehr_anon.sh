#!/bin/bash
# Anonymise a text file or a directory of text files
# Usage: semehr_anon.sh -i input_dir -o output_dir
#    or: semehr_anon.sh -i input_file -o output_file
#          -s path to the parent of CogStack-SemEHR dir.
# To anonymise *DICOM* files you need CTP_SRAnonTool.sh.
# NOTE: this script uses several external programs:
#   jq, CTP_PhiToXML.py, semehr_redact.py
# NOTE: this script has been supersceded by semehr_anon.py.

prog="$0"
usage="usage: $prog [-s semehr_dir] -i input -o output"
options="i:o:s:"
tmpinput=""
tmpoutput=""
originput=""
origoutput=""
verbose=0

semehr_dir="$HOME/SemEHR"   # where CogStack-SemEHR is found

# XXX temporary, find CTP_PhiToXML.py
# XXX temporary, find semehr_redact.py
export PATH=${PATH}:$HOME/SemEHR/SmiServices/src/applications/SRAnonTool/:.

tidy_exit()
{
	echo ERROR tidy_exit not implemented yet
}

while getopts "$options" var; do
    case $var in
        i) input="$OPTARG";;
        o) output="$OPTARG";;
        s) semehr_dir="$OPTARG";;
        ?) echo $usage; exit 1;;
    esac
done

if [ "$input" == "" ]; then echo $usage >&2; exit 1; fi
if [ "$output" == "" ]; then echo $usage >&2; exit 1; fi

if [ -d "$input" -a -d "$output" ]; then
    # Turn into absolute pathnames because we 'cd' below
    input=$(realpath "$input")
    output=$(realpath "$output")
elif [ -f "$input" ]; then
    # Create temporary directories and run with them
    originput="$input"
    origoutput="$output"
    tmpinput=$(mktemp -d)
    tmpoutput=$(mktemp -d)
    cp "$input" "$tmpinput"
    input="$tmpinput"
    output="$tmpoutput"
else
    echo $usage >&2
    exit 1
fi

# Configure the SemEHR anonymiser
semehr_input_dir="$input"
semehr_output_dir="$output"

# Create a custom config file in the output directory
jq < $semehr_dir/CogStack-SemEHR/anonymisation/conf/anonymisation_task.json > $semehr_output_dir/anonymisation_task.json \
'.text_data_path="'${semehr_input_dir}'"|'\
'.anonymisation_output="'${semehr_output_dir}'"|'\
'.extracted_phi="'${semehr_output_dir}'/phi"|'\
'.grouped_phi_output="'${semehr_output_dir}'/phi_grouped"|'\
'.logging_file="'${semehr_output_dir}'/log"|'\
'.annotation_mode=true'

# Run the new anonymiser
if [ $verbose -gt 0 ]; then echo "Running $semehr_dir/CogStack-SemEHR/anonymisation/anonymiser.py $semehr_output_dir/anonymisation_task.json"; fi
(cd $semehr_dir/CogStack-SemEHR/anonymisation; python3 ./anonymiser.py $semehr_output_dir/anonymisation_task.json) #>> $log 2>&1
rc=$?

if [ $rc -ne 0 ]; then
    tidy_exit $rc "Possible failure (exit code $rc) of SemEHR anonymiser given ${input}"
fi

# The new SemEHR anonymiser can be configured to create knowtator.xml files
# but they aren't as complete as the PHI file. Convert the PHI to XML.
if [ $verbose -gt 0 ]; then echo "Running CTP_PhiToXML.py -p ${semehr_output_dir}/phi"; fi
CTP_PhiToXML.py -p ${semehr_output_dir}/phi
if [ $rc -ne 0 ]; then
    tidy_exit $rc "Possible failure (exit code $rc) of CTP_PhiToXML given ${input}"
fi

if [ $verbose -gt 0 ]; then echo "Running semehr_redact.py -i $semehr_output_dir"; fi
semehr_redact.py -i "$semehr_output_dir"
if [ $rc -ne 0 ]; then
    tidy_exit $rc "Possible failure (exit code $rc) of semehr_redact given ${input}"
fi

# Tidy up the output directory
rm -f "$output"/phi "$output"/phi_grouped "$output"/*.xml "$output"/anonymisation_task.json
#rm -f "$output"/log

# Only one file was requested so copy to desired output file
# copy it to be the requested output file.
if [ "$origoutput" != "" ]; then
    cp "$output"/$(basename "$originput") "$origoutput"
fi

# Tidy up temporary directories
if [ "$tmpinput" != "" ]; then rm -fr "$tmpinput"; fi
if [ "$tmpoutput" != "" ]; then rm -fr "$tmpoutput"; fi

exit 0
