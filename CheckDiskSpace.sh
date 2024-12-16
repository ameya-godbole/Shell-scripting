#!/bin/bash

#Author: Ameya Godbole
#Description: This script monitors the disk space. If the space is getting full it will send an alert msg.

DF=/bin/df
CheckDiskSpace=$(df |  awk 'NR==5, NR==7 {print$5}' | cut -d "%" -f 1)

for i in ${CheckDiskSpace}
do
        if [ $i -gt 10 ]; then
                echo "Disk space utilization is $i "%""
        fi
done