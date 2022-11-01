#!/bin/bash
# Report any missing zip files.
# We are expect one per day from each year we have in PACS.
# Zip files are named YYYYMMDD.zip
# Using the jday utility we convert Julian day number into YYYYMMDD.

for year in 2010 2011 2012 2013 2014 2015 2016 2017 2018; do
  n=1
  while [ $((n++)) -lt 367 ]; do
    z=$(jday -H -t daydir $year $n | tr -d '/').zip
    if [ "$z" == "18991231.zip" ]; then
      echo "No such day $n of $year"
      continue
    fi
    if [ ! -f $z ]; then
      echo MISSING $z
    fi
  done
done
