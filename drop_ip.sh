#!/bin/bash
echo "Dropping the IP address $1 ..."
iptables -I INPUT -s $1 -j DROP
sleep 2
echo "Packets from $1 will be dropped!"
