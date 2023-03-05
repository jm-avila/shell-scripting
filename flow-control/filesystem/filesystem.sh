#! /bin/bash

# Provide file permissions for current user
# READ: YES/NO
# WRITE: YES/NO
# EXECUTE: YES/NO

# Argument Check
if [ $# -ne 1 ]; then
    echo "Provide exactly one argument"
    exit 1
fi

# Variable Assignment
FILE=$1

# Default Values
READ="NO"
WRITE="NO"
EXECUTE="NO"

echo ==== FILE: $FILE ====

# Check if file exists
if [ -f $FILE ]; then
    # Check if the file is readable
    if [ -r $FILE ]; then
        READ="YES"
    fi

    # Check if the file is writable
    if [ -w $FILE ]; then
        WRITE="YES"
    fi

    # Check if the file is executable
    if [ -x $FILE ]; then
        EXECUTE="YES"
    fi

    echo "READ:    $READ"
    echo "WRITE:   $WRITE"
    echo "EXECUTE: $EXECUTE"
    exit 0
fi

if [ -d $FILE ]; then
    echo Is a directory
else
    echo Does not exists
fi