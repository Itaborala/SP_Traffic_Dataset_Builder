#!/bin/bash

START_TIME=$(date +%s)


#CORE=2
INIT_FOLDER=1  
FIN_FOLDER=31  

for i in $(seq $INIT_FOLDER $FIN_FOLDER)
do
	FOLDER=$(ls ../$1d | grep $(($i/10))$(($i%10)))
	
	if [ -d "../$1d/$FOLDER" ]
	then
		echo "Concatenating ../$1/$FOLDER"
		./create_csv.sh $FOLDER $1
		./test_ds.py ../$1c/$FOLDER.csv
	fi
done



END_TIME=$(date +%s)

TIME_ELAPSED=$(($END_TIME - $START_TIME))
MIN_ELAPSED=$(( ($TIME_ELAPSED / 60) ))
SEC_ELAPSED=$(( ($TIME_ELAPSED % 60) ))
echo "This Concatenating Task took $MIN_ELAPSED minutes and $SEC_ELAPSED seconds to complete" 
