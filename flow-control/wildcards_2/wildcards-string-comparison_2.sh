#! /bin/bash

# backup all .pdf files

# the script takes one argument
# destination-path: needs to end with /backup

SOURCE=./source
DESTINATION=$1

# argument check
if [ $# -ne 1 ]; then
    echo "Destination path needed"
    exit 1
fi

# destination path check
if [[ $DESTINATION != */backup ]]; then
    echo Wrong destination path, must end with /backup
    exit 2
fi

# create destination folder
DATE=$(date +%Y-%m-%d_%H:%M:%S)
mkdir -p $DESTINATION/$DATE

# copy from source to destination
cp $SOURCE/*.pdf $DESTINATION/$DATE

# test exist status of copy command
if [ $? -eq 0 ]; then
    echo backup OK
else
    echo backup failed
fi