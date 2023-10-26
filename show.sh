#!/bin/bash
if [[ $# -eq 1 ]]
then
	if [[ -f "$1" ]]
	then
		echo "Valid file, Displaying contents of $1...✅✅✅"
		sleep 1
		cat $1

	elif [[ -d "$1" ]]
	then
		echo "value provided is a directory, running ls -l ..."
		sleep 1
		ls -l "$1"
	fi
else
	echo "The Value $1 provided is neither a file nor directory ❗❗❗"

fi
