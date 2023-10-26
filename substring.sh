#!/bin/bash


str1="Nowadays, linux powers the server of the internet"

if [[ "$str1" == *"linux"* ]]
then
	echo "Sub-string is present"
else
	echo "No sub string available..."
fi
