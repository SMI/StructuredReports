#!/bin/bash

# Create millions of fake documents
# Do batches of 5000 at once

start_num=5001
if [ "$1" != "" ]; then start_num="$1"; fi

realjsondir=mtsamples_ihi_semehr_results # relative to parent of the fake dir
realtxtdir=mtsamples_ihi_docs
jsondir=../data/fake_json
txtdir=../data/fake_txt

mkdir -p $jsondir
mkdir -p $txtdir

rm -f $jsondir/* $txtdir/*

n=1
while [ $n -lt 5000 ]; do
    doc=`printf "doc%04d" $n`
    newdoc=`printf "doc%d" $start_num`
    if [ -f ../data/$realjsondir/$doc.json ]; then
        ln -s ../$realtxtdir/$doc.txt $txtdir/$newdoc.txt
        ln -s ../$realjsondir/$doc.json $jsondir/$newdoc.json
    else
	    echo no $realjsondir/$doc.json
    fi
    n=$((n+1))
    start_num=$((start_num+1))
    printf "$start_num \r"
done
