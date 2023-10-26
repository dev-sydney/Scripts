#!/bin/bash

function print_something(){
	echo "I print something obvisously"
}
display_something(){
	echo "Im the display function"
	$print_something
}

#print_something
#display_something
create_files(){
	echo "Creating $1"
	touch $1
	chmod 400 $1

	echo "    "
	echo "Creating $2"
	touch $2
	chmod 600 $2 

}
create_files aa.txt bb.txt



get_lines_in_file(){
	grep -c "$1" "$2"
}

n=$(get_lines_in_file "usb" "/var/log/dmesg")

echo $n
