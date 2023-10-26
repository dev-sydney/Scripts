#!/bin/bash

PS3="YOUR CHOICE: "
select ITEM in "Add user" "List all processes" "kill process" "Install program" "Exit" Quit
do
	case $REPLY in
		1)
			read -p "Enter the username: " userName
			## Perform a check to see if the user already exists

			output=$(grep -w $userName /etc/passwd)

			if [[ $output = *"$userName"* ]]
			then
				echo "The username $username already exists, bro"
			else
				sudo useradd -m -d /home/$userName -s /bin/bash "$userName"

				## Check if the user was created successfully using the cmd exit-
				## status of useradd
				if [[ $? -eq 0 ]]
				then
					echo "Account for $userName was created successfully🥳"
				else
					echo "Trouble adding user wai❗"
				fi
			fi
			;;

		2)
			echo "Listing all processes..."
			sleep 1
			echo ""
			ps -ef
			;;

		3)
			read -p "Enter a process to kill: " process
			pkill $process
			;;

		4)
			read -p "Enter the program to install"  program_name
			sudo apt update && sudo apt install $program_name
			;;
		5)
			echo "Quitting..."
			sleep 1
			break
			;;
		*)
			echo "Inavlid option: $REPLY"
			;;
	esac
done
