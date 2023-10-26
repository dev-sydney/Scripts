#!/bin/bash
echo "Renaming all txt files."
echo "**************************"
sleep 1

for txtFile in *.txt
do
	mv $txtFile new-$txtFile
done
echo "Successfully changed all txt file names."
