# /bin/bash

STR1="hello buddy"
STR2="Hello buddy"

echo String comparison

if [ "$STR1" == "$STR2" ]; then
    echo equal
else
    echo not equal
fi

if [[ $STR1 == $STR2 ]]; then
    echo equal
else
    echo not equal
fi


WHOAMI=$(whoami)

if [ "$WHOAMI" != "root" ]; then
    echo "You are not root, exiting"
    exit 1
else
    ps -ef | head -3
fi
