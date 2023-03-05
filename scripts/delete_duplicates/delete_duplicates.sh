#! /bin/bash

SOURCE=$1
VALID_EXTENSION=$2
EXTENSION=".*\.$VALID_EXTENSION"

if [ $# -ne 2 ]; then
    echo "Need the SOURCE path and file EXTENSION"
    exit 1
fi

cd $SOURCE

for file1 in *; do
  for file2 in *; do
    cmp --silent $file1 $file2
    if [ $? -eq 0 ] && [ $file1 != $file2 ] && [[ $file1 =~ $EXTENSION ]] && [[ $file2 =~ $VALID_EXTENSION ]]; then
        rm $file2
    fi
  done
done