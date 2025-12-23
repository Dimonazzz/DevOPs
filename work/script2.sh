#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 <~homework>"
	exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
	echo "Error: $DIR is not a directory."
	exit 1
fi
fille_count=$(find "$DIR" -type f | wc -l)
dir_count=$(find "$DIR" -type d | wc-1)

echo "Directory: $DIR"
echo "FIles: $file_count"
echo "Subdirectories: $((dir_count - 1))"

