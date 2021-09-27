#!/bin/bash

START_TIME=$(date +%s)



FILES=$(ls ../$1c)  

for i in $FILES
do
	
	
	if [ -f "../$1c/$i" ]
	then
		echo "Deleting Blank Lines From ../$1c/$i"
		sed -i '/^$/d' ../$1c/$i
		
	fi
done



END_TIME=$(date +%s)

TIME_ELAPSED=$(($END_TIME - $START_TIME))
MIN_ELAPSED=$(( ($TIME_ELAPSED / 60) ))
SEC_ELAPSED=$(( ($TIME_ELAPSED % 60) ))
echo "This Deleting Task took $MIN_ELAPSED minutes and $SEC_ELAPSED seconds to complete" 
