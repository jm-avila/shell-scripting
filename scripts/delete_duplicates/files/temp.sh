#! /bin/bash

VAR=file.txt
REGEX=".*\.txt"
if ! [[ $VAR =~ $REGEX ]]; then
    echo "Valid Extension"
fi