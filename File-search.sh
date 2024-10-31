#!/bin/bash

# Script name for usage message
readonly SCRIPT_NAME=${0##*/}

# Displays usage help of script
usage() {
  cat <<USAGE
Usage: ${SCRIPT_NAME}
Type a file name to see if it exists.
USAGE
}

# Prompts user to type file name
echo "Type a file name to see if it exists"
read -r filename

# Checks if argument passed, if not exits script
if [[ $# -ne 1 ]]; then
  usage
  exit 1
fi


# Checks if file typed exists
if [[ -f "$filename" ]] ; then
	echo "$filename exists at path:"
	realpath "$filename"
else
	echo "$filename does not exist"
fi

exit 0;