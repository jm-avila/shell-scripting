#! /bin/bash

# Print file and display line numbers

# Argument Check
if [ $# -ne 1 ]; then
    echo "Exactly one argument is needed, run $0 file-path"
    exit 1
fi

# Check is argument is a file
if ! [ -f "$1" ]; then
    echo "File you have specified does not exists"
    exit 1
fi

FILENAME=$1
COUNT=1

while read line
do
    echo "$COUNT: $line"
    let COUNT++
done < "$FILENAME"