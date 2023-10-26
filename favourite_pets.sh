#!/bin/bash

echo -n "What is your favourite pet? "
read PET

case $PET in
	"dog")
		echo "Your favorite pet is the dog."
		;;
	cat|Cat)
		echo "You like cats."
		;;
	fish|"African turtle")
		echo "$PET are great"
		;;
	*)
		echo "Your favorite pet is unknown wai."
esac
