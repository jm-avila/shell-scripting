#! /bin/bash

mkdir -p files
cd files

for i in {1..30}; do
    MODULUS=$((i%2))
    if [ $MODULUS -eq 0 ]; then
        echo EVEN >> file$i.txt
    else
        echo ODD >> file$i.txt
    fi
done