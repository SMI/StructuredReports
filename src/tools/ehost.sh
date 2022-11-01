#!/bin/bash

# Run the eHOST application using the sample data
#  copies 10 documents into corpus
#  converts 10 semehr_results into knowtator.xml in saved
# runs the version of eHOST from jianlins

ehost_dir=../ehost
ehost_project=test1
data_dir=../data

mkdir -p $ehost_dir/$ehost_project/config
mkdir -p $ehost_dir/$ehost_project/corpus
mkdir -p $ehost_dir/$ehost_project/saved

#cp $ehost_dir/config/projectschema.xml  $ehost_dir/$ehost_project/config/projectschema.xml
cp $data_dir/mtsamples_ihi_docs/doc000?.txt            $ehost_dir/$ehost_project/corpus
./knowtator_encode.py -o $ehost_dir/$ehost_project/saved -i $data_dir/mtsamples_ihi_semehr_results/doc000?.json

cd $ehost_dir
java -jar ehost-1.31-SNAPSHOT.jar

