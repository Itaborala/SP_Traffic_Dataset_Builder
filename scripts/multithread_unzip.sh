#!/bin/bash

for i in {1..1}
do
	gnome-terminal --working-directory=Documents/TRafego_Testes/scripts -- "./unzip.sh $1 $i"	
done


