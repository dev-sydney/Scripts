#!/bin/bash

for item in ./*
do
	if [[ -f "$item" ]]
	then
		echo "Displaying contents of $item"
		sleep 1
		cat $item
		echo "################################################"
	fi
done
