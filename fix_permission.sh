#!/bin/bash

read -p "Please enter the name of the directory to change permission: " dir_name
if [[ -d "$dirn_name/" ]]
then
	for item in $(ls "$dir_name/")
	do
		#echo "$item"
		#if the item is a file
		if [[ -f $item ]]
		then
			sudo chmod 644 $item
		fi

		#if the item is directory
		if [[ -d $item ]]
		then
			sudo chmod 755 $item
		fi
	done
	echo "Changed permissions successfully"
else
	echo "$dir_name does not exist man.❗"
fi
