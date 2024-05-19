#!/usr/bin/bash

writefile="$1"
writestr="$2"

if [ -z "$1" ]
then
		echo "No filename specified."
		exit 1
fi

if [ -z "$2" ]
then
		echo "No file content specified."
		exit 1
fi

writedir="$(dirname $writefile)"

if [ ! -e "$writedir" ]
then
		mkdir -p "$writedir"
fi

echo "$writestr" > "$writefile"
