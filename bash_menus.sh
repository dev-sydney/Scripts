#!/bin/bash
PS3="Select a country from the list above: "
select COUNTRY in Ghana France "United Kingdom" "South Africa" "Japan" Quit
do

	case $REPLY in
		1)
			echo "You speak Twi"
			;;
		2)
			echo "You speak French"
			;;
		3)
			echo "You speak English"
			;;
		4)
			echo "You speak Zulu"
			;;
		5)
			echo "You speak Japanese"
			;;
		6)
			echo "Closing menu..."
			sleep 1
			break
			;;
		*)
			echo "Invalid option: $REPLY"
	esac
done

