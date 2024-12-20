#!/bin/bash

# Script to install git on the list of hosts
# Author: Ameya Godbole


# Read the hosts file to get all the hosts
hostfile=${cat /home/hosts.txt}

# Connect with each host and create directory for git
# Install git on each host

for host in hostfile
do 
    ssh user@ipaddress
    sudo su

    # Only root user should be able to install git
    if  [[ ${id -u} -ne 0 ]]; then
        echo "Warning: Only root can install git"
        exit 1

        else
            cd /home
            mkdir git
            cd git
            yum install git -y
done

