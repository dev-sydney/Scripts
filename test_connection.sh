#!/bin/bash
read -p "Please enter the IP address" ip

ping_output="$(ping -c 3 $ip)"

if [[ $ping_output = *"100% packet loss"* ]]
then
	echo "Unable to connect to $ip"
else
	echo "Connection to $ip successful"
fi
