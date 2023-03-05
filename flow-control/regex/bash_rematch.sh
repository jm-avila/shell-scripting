#! /bin/bash

text="name=value with spaces"
[[ $text =~ ^([a-z]+)=(.*)$ ]]
echo all: "${BASH_REMATCH[0]}"
echo name: "${BASH_REMATCH[1]}"
echo value: "${BASH_REMATCH[2]}"