#!/bin/bash


if [[ $# -ne 2 ]]
then
	echo "The run the script with 2 arguments: Signal & PID."
	exit
fi

case $1 in
	1)
		echo "Sending the SIGNHUP signal to $2"
		kill -SIGHUP $2
		;;
	2)
		echo "Sending the SIGINT signal to $2"
		kill -SIGINT $2
		;;
	3)
		echo "Sending the SIGQUIT signal to $2"
		kill -SIGQUIT $2
		;;
	15)
		echo "Sending the SIGTERM signal to $2"
		kill -SIGTERM $2
		;;
	*)
		echo "Signal number $1 will not be delivered"
esac
