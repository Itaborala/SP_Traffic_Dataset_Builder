#!/bin/bash
# Change list to delete blank lines from specific folders
for i in 02 03 04 05 06 07 08 09
do
	./delete_csv_lines.sh $i
done
