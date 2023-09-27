#!/bin/bash

FILE_TO_COPY=$1
DESTINATION=$2

cp $1 $2/"available.json-"`date +%F`
