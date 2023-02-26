#!/bin/bash

echo -n "Number: "
read NUMBER

if [ $NUMBER -eq 5 ]; then
    echo Five
fi

if [ $NUMBER -gt 5 ]; then
    echo Greater Than Five
fi

if [ $NUMBER -le 5 ]; then
    echo Ouuu Mama
fi

# Exit if exactly two arguments aren't provided

if [ ! $# -eq 2 ]; then 
    echo "Two arguments needed for additional steps."
    exit 0
fi

FIRST=$1
SECOND=$2

let RESULT=FIRST*SECOND
echo "$FIRST * $SECOND = $RESULT"