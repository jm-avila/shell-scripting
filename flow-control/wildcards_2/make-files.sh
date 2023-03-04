#! /bin/bash

mkdir -p ./source

cd ./source

for i in {1..2}; do touch file$i.pdf; done
for i in {1..3}; do touch file$i.txt; done
