#!/bin/bash

NUMBER=7

let RESULT=NUMBER+5 # no spaces and no $ to access value

echo $RESULT

echo Number: $NUMBER

# Increment by one
let NUMBER++
echo Increment Number by one 
echo Number: $NUMBER

# Decrement by one 
let NUMBER--
echo Decrement Number by one
echo Number: $NUMBER


NUM=5
echo Num: $NUM

# Increment by num
let NUMBER+=NUM
echo Increment Number by num 
echo Number: $NUMBER

# Decrement by num 
let NUMBER-=NUM
echo Decrement Number by num
echo Number: $NUMBER

