#!/bin/bash

# Script name for usage message
readonly SCRIPT_NAME=${0##*/}
readonly CL_ARGS_ERROR=155

# Displays usage help of script
usage() {
  cat <<USAGE
Usage: ${SCRIPT_NAME}

This script lets user search for a file
Arguments:
  filename  The file to be searched.

Options:
  -h, --help  Shows this help message and exit
USAGE
}

terminate(){
  msg="${1}"
  code="${2:-160}"
  echo "Error ${msg}" >&2
  exit "${code}"
}
# Prompts user to type file name
echo "Type a file name to see if it exists"
read -r filename

# Checks if argument passed, if not exits script
if [[ $# -ne 1 ]]; then
  usage
  terminate "Command line argument missing" "${CL_ARGS_ERROR}"
fi

if [[ "${1}" == "-h" ]] || [[ "${1}" == "--help" ]]; then
  usage
  exit 0
fi

# Checks if file typed exists
if [[ -f "$filename" ]] ; then
	echo "$filename exists at path:"
	realpath "$filename"
else
	echo "$filename does not exist"
fi

exit 0;