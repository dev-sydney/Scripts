#!/bin/bash



setAcl(){
	read -p "Please enter the path to the file: " file_path

	read -p "Do you want group or user acess?(g/u)" entry_who

	case $entry_who in
		g)
			read -p "Please enter the group name to allow access to that file: " group_name
			setfacl -m g:$group_name:rw $file_path
			;;
		u)
			read -p "Please enter the user name to allow access to that file: " user_name
			setfacl -m u:$user_name:rw $file_path
			;;
		*)
			echo "Invalid option"
			break;
			;;
	esac

	if [[ $? -eq 0 ]]
	then
		echo "$user_name can now read and write to that file.🥳"
		echo " "
	else
		echo "$user_name could not be added to the access list.❗"
	fi
}

setAcl
	
while [[ true ]]
do
	
	
	read -p "Do you want to another user to have access? (Y/N) " continue_option
	case $continue_option in
		y)
			setAcl
			;;
		n)
			echo "Ending script..."
			sleep 1;
			break;
			;;
		*)
			echo "Invalid option"
			break;
			;;
	esac
done
