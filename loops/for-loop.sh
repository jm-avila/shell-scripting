#! /bin/bash

echo Loop files with .txt suffix
for FILE in *.txt
do
    echo $FILE
done

echo
echo Loop List
for NUMBER in {1..3}
do
    echo $NUMBER
done

echo
echo Loop Arguments
for ARG in "$@"
do
    echo $ARG
done