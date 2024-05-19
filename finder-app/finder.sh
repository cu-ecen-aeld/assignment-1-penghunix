#!/usr/bin/bash

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ]; then
	echo "First argument is not specified."
	exit 1
fi

if [ -z "$searchstr" ]; then
	echo "Second argument is not specified."
	exit 1
fi

x=0
y=0

if [ -d "$filesdir" ]; then
	x=$(find $filesdir -type f | wc -l)
	for file in $(find $filesdir -type f)
	do
		lines=$(grep $searchstr $file | wc -l)
		y=$(( y + lines ))
	done
	echo "The number of files are $x and the number of matching lines are $y"
else
	echo "The first argument should be a directory."
	exit 1
fi
