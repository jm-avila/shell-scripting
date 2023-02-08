#!/bin/bash

NUMBER=7

#spaces around the operand are mandatory
RESULT=`echo "$NUMBER * 1.9" | bc`

echo RESULT $RESULT

## Square
RESULT_SQUARE=`echo "$NUMBER ^ 2" | bc`

echo RESULT_SQUARE $RESULT_SQUARE
