#!/bin/bash

#Author: Ameya Godbole
#Description: Script to monitor to server using ping

hosts=ipaddress

ping -c1 ipaddress &> /dev/null
if [ $? -eq 0 ]; then
echo "server is pingable"
else
echo "server is not pingable"
fi


