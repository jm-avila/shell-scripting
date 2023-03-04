#! /bin/bash

mkdir -p files
cd ./files

for i in {1..30}; do touch file$i.txt; done
for i in {1..30}; do touch file$i.img; done