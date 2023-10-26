#!/bin/bash
read -p "Enter IP address of domain to block: " ip
iptables -I INPUT -s $ip -j DROP
echo "Packets from $ip will be dropped!"
