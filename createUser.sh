#!/bin/bash
#check if the user exists
if [[ -n $(cut -d: -f1 /etc/passwd | grep -w "$1") ]]
then
	echo "An account with the username $1 already exist❗"
	exit
else
	if [[ -z $(cut -d: -f1 /etc/group | grep -w "$2") ]]
	then
		echo "The group $2 does not exist, pls enter a group that actually exists."
		exit
	else
		echo "Creating user..."
		echo "----------------"
		sudo useradd -m -d /home/$1 -G $2 -s /bin/bash "$1"
		if [[ $? -eq 0 ]]
		then
			echo "User $1 created successfully.✅"
			tail -n1 /etc/passwd
		else
			echo "Trouble creating user, pls check your arguments and try again."
		fi
	fi
fi
