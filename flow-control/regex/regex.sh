#! /bin/bash

# Test with ./regex.sh "local network: 127.0.0.1"
# Provide one word/sentence as an argument to the script.
# If in that sentence there is an ip address, find out  it's reachable or not.

# Argument Check
if [ $# -ne 1 ]; then
    echo "Provide exactly one argument e.g. $0 argument"
    exit 1
fi

VAR=$1
# ip address validation
REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"
if ! [[ $VAR =~ $REGEX ]]; then
    echo "No IP address provided"
    exit 2
fi

IP=${BASH_REMATCH[0]}

# ping ip address
ping -c4 $IP 1>/dev/null
if [ $? -eq 0 ]; then
    STATUS="ALIVE"
else
    STATUS="DEAD"
fi

echo "IP Found: $IP ($STATUS)"