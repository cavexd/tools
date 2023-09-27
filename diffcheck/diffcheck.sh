#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Tool to check differences between two files"
	echo "Usage: $0 <initial_file> <actual_file>"
	exit 1
fi

INITIAL_FILE=$1
ACTUAL_FILE=$2
STATUS_FILE=/home/xxlmediadevs/

echo $INITIAL_FILE
echo $ACTUAL_FILE

if [ -z "`cat $STATUS_FILE`" ]; then
	sleep 1
else
	echo "Exiting"
	exit 1	
fi

diff $INITIAL_FILE $ACTUAL_FILE

if [ $? != 1 ]; then
	exit 1
else
	echo "["`date +%F-%H-%M-%S`"] - The file $INITIAL_FILE has been changed" >> $STATUS_FILE
fi

