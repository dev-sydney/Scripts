#!/bin/bash
#Script for monitoring a particular process
if [[ $# -gt 0 ]]
then

	while [[ true ]]
	do
		output="$(pgrep -l $1)"

		if [[ -n $output ]]
		then
			echo "$1 has a running instance."
		else
			echo "$1 has NO running instance.❗"
		fi
		sleep 3
	done
else
	echo "No arguments provided."
fi
