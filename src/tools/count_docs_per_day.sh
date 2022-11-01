#!/bin/bash
# Display a count of documents per day
# (based on ContentDate which is not equal to StudyDate)
# Assumes virtualenv activated.
# Assumes semehr_to_postgres.py is in current dir!

#source ~/venv/bin/activate
#export SMI_LOGS_ROOT=.

for year in $(seq 2011 2018); do
  for month in $(seq -w 12); do
    for day in $(seq -w 31); do
      echo "${year}/${month}/${day} = " $(./semehr_to_postgres.py --count --query-contentdate ${year}${month}${day} 2>/dev/null)
    done
  done
done
