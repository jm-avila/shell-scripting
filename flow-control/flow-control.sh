#!/bin/bash

echo -n "Name: "
read NAME

if [ $NAME == "Jose" ]; then
    echo Hello Jose
elif [ $NAME == "Caro" ]; then
    echo Hello Caro
else
    echo Hello User
fi


echo -n "Number: "
read NUMBER

if [ $NUMBER -le 5 ] && [ $NAME == "Jose" ]; then
    echo Ouuu Mama
fi