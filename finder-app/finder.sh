#!/bin/sh
# Author: Funakoshi70

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]
then
    echo "directory is not specified"
    exit 1
fi

if [ ! -d $filedir ]
then
    echo "1st argument is not a folder"
    exit 1
fi

file_count=$(grep -rl "$searchstr" "$filesdir" | wc -l)
line_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo  "The number of files are $file_count and the number of matching lines are $line_count"
