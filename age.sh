#!/bin/bash
read -p "How old are you? " userAge
if [[ $userAge -lt 18 ]] && [[ $userAge -gt 0 ]]
then
	echo "Yeah, your'e alright..."
elif [[ $userAge -ge 18 ]] && [[ $userAge -lt 30 ]]
then
	echo "Your old ass ain't fooling nobody..."
else
	echo "Your wrinkling ass"
fi
