#!/bin/bash

echo "Starting To process Lot L3 Month $1"

sleep 2

echo "Unzipping..."

./unzip2.sh $1

sleep 2

echo "Creating CSV Dataset"

mkdir ../$1c

./txt2csv.sh $1

sleep 2

echo "Deleting TXT files"

# rm -r ../$1d

sleep 2

echo "Finished!"
