#!/bin/bash

echo "Type a file name to see if it exists"
read -r filename

# Checks if argument passed, if not exits script
if [[ $# -ne 1 ]]; then
  echo "No arguments passed."
  exit 1
fi


# Checks if file typed exists
if [[ -f "$filename" ]] ; then
	echo "$filename exists at path:"
	realpath "$filename"
else
	echo "$filename does not exist"
fi

exit 0