#!/bin/bash

log=`basename $0`.log

run()
{
	num=$1
	echo "$(date) Starting $num"
	echo "$(date) Starting $num" >> $log
	./mtsamples_ihi_fake.sh $num
	./semehr_to_postgres.py -j ~/SemEHR/structuredreports/src/data/fake_json/ -t ~/SemEHR/structuredreports/src/data/fake_txt/ >> $log 2>&1
}

# Already done 95000 so start at 100000

touch $log
num=100000
while true; do
	echo "$(date) starting $num"
	run $num
	num=$((num+5000))
done
exit 0
# Already done:
run 10000 
run 15000 
run 20000 
run 25000 
run 30000 
run 35000 
run 40000 
run 45000 
run 50000 
run 55000 
run 60000 
run 65000 
run 70000 
run 75000 
run 80000 
run 85000 
run 90000 
run 95000 
echo $(date) Finished
