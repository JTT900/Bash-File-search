#!/bin/bash

echo "Type a file name to see if it exists"
read filename

if [[ -f "$filename" ]] ; then
	echo "$filename exists"
else
	echo "$filename does not exist"
fi
