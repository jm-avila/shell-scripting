#!/bin/bash

NUMBER=7

#spaces around the operand are mandatory
RESULT_1=$(expr $NUMBER + 5) 
RESULT_2=$(expr $NUMBER + 8)

echo RESULT_1 $RESULT_1
echo RESULT_2 $RESULT_2