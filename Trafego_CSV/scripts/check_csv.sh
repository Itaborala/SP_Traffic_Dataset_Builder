#!/bin/bash

START_TIME=$(date +%s)


#CORE=2
INIT_FOLDER=1  
FIN_FOLDER=31  

for i in $(seq $INIT_FOLDER $FIN_FOLDER)
do
	CSV=$(ls ../$1c | grep $(($i/10))$(($i%10)))
	
	if [ -f "../$1c/$CSV" ]
	then
		echo "$1 - $CSV"
		./test_ds.py ../$1c/$CSV
	fi
done



END_TIME=$(date +%s)

TIME_ELAPSED=$(($END_TIME - $START_TIME))
MIN_ELAPSED=$(( ($TIME_ELAPSED / 60) ))
SEC_ELAPSED=$(( ($TIME_ELAPSED % 60) ))
echo "This task took $MIN_ELAPSED minutes and $SEC_ELAPSED seconds to complete" 
