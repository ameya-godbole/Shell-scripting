#!/bin/bash

#Author: Ameya Godbole
#Descripting: Monitor if the log file is getting generated

# Grab the latest log file
LatestLogFile = ls -lrt | awk 'NR==2{print $NF}'

# File creation time in seconds
FileCeationDate -r ${LatestLogFile} '+%s'

# Find the present time in seconds
date '+%s'

# Find the age of file in hours
FileAge = $((FileCreationDate - date)/3600)

# Check if the directory holding log file is there
if [[ ! -d ${DirToMonitor} ]] ; then
    echo "Directory is not existing"
    exit 1
fi

# Check if the log file is there or not
if [[ ! -z ${LatestLogFile} ]] ; then
    echo "Latest log file is missing"
    exit 2
fi

if [[ ${FileAge} -gt 24 ]]; then
    echo "No log file generated for today"
    else
        echo "Log file for today is present"
    exit 3
fi




