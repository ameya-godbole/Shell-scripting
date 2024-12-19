#!/bin/bash

Author:Ameya Godbole
Description: Script to delete old files
Date: 04/12/2024

filename=/path/to/file
DATE=

# Find out the file age in seconds
fileage = $(date -r filename '+%s')

# Get the current time in seconds
datenow = $(date -r '+%s')

# Find the age of file in hours
fileage = $((fileage - datenow)/3600)

# Delete the file if it is older than 24 hours
if [ fileage -gt 24 ]; then
rm filename
exit 1
fi




