#!/bin/sh
# Author: Funakoshi70

writefile=$1
writestr=$2

if [ $# -ne 2 ]
then
    echo "wrong arguments"
    exit 1
fi

if [ ! -d $writefile ]
then
    Folder=$(dirname "$writefile")
    mkdir -p "$Folder"
fi

echo "$writestr" > "$writefile"
