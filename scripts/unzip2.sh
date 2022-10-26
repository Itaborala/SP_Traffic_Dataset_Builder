#!/bin/bash

START_TIME=$(date +%s)

#Multi-thread unzipping
#CORE=2
INIT_FILE=1  #$(($CORE*4))
FIN_FILE=31  #$(($CORE*4 +3))

for i in $(seq $INIT_FILE $FIN_FILE)
do
	FILE=$(ls ../$1 | grep $(($i/10))$(($i%10)).zip)
	
	if [ -f "../$1/$FILE" ]
	then
		echo "Unzipping ../$1/$FILE"
		taskset -c 2 unzip -aq ../$1/$FILE -d ../$1d
	fi
done



END_TIME=$(date +%s)

TIME_ELAPSED=$(($END_TIME - $START_TIME))
MIN_ELAPSED=$(( ($TIME_ELAPSED / 60) ))
SEC_ELAPSED=$(( ($TIME_ELAPSED % 60) ))
echo "This UNZIP Task took $MIN_ELAPSED minutes and $SEC_ELAPSED seconds to complete" 
