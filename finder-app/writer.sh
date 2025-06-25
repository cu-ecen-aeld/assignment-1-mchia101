#!/bin/bash
# assigment 1 for finder.sh
# Author: mchia101

# stop while executing the script if any command fails
set -e
#stop while executing the script if any variable is not set
set -u

if [ $# -lt 2 ]
then
    echo "Usage: $0 <writefile> <string>"
    exit 1
else
    WRITEFILE=$1
    WRITE_STRING=$2
fi

if ! mkdir -p "$(dirname "$WRITEFILE")" >/dev/null 2>&1 || ! touch "$WRITEFILE" >/dev/null 2>&1; 
then
    #  Print an error message and exit with status 1
    echo "File $WRITEFILE could not be created."  
    exit 1
else
    echo "File $WRITEFILE created successfully."
    echo "$WRITE_STRING" > "$WRITEFILE"
fi