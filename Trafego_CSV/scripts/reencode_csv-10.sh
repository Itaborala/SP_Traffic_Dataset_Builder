#!/bin/bash

START_TIME=$(date +%s)


for i in 09 10 12 16 18 19 20 21 22 23 24 25 26 27 28 29 30 31
do
	CSV=$(ls ../$1c | grep $(($i/10))$(($i%10)))
	
	if [ -f "../$1c/$CSV" ]
	then
		echo "$1 - $CSV"
		./reencode_ds-12.py ../$1c/$CSV
	fi
done



END_TIME=$(date +%s)

TIME_ELAPSED=$(($END_TIME - $START_TIME))
MIN_ELAPSED=$(( ($TIME_ELAPSED / 60) ))
SEC_ELAPSED=$(( ($TIME_ELAPSED % 60) ))
echo "This Reencoding Task took $MIN_ELAPSED minutes and $SEC_ELAPSED seconds to complete" 
