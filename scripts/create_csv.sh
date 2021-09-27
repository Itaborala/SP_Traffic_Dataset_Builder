#!/bin/bash


FIRST=$(ls ../$2d/$1 | awk 'NR==1' | awk '{print substr($0, 4, 3)}')
LAST=$(ls ../$2d/$1 | awk 'END{print substr($0, 4, 3)}')

if [ $FIRST -eq 112 ]
then
	FIRST=166
fi

CODIGO_INICIAL=$(seq $FIRST $LAST)

for i in $CODIGO_INICIAL
do 
	taskset -c 4 ./../bin/append_to_csv ../$2c/$1.csv ../$2d/$1/DTL$i*
done
