#! /bin/bash

# Read STDIN until a condition is meet
while [ "$NAME" != "stop" ]
do
    echo -n Enter your name:
    read NAME
done


# C Style
A=1
LIMIT=10
while (( A < LIMIT ))
do
    echo $A
    ((A++))
done

# Pass file by STDIN to while loop
FILENAME=loops.md
while read line
do
    echo $line
done < "$FILENAME"

# Pipe file to while loop
cat "$FILENAME" |
while read line
do
echo $line
done