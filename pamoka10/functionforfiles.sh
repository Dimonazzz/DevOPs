#!/bin/bash

check_file_permissions() {
    local filename=$1

    if [ -r "$filename" ]; then
        echo "Readable: Yes"
    else
        echo "Readable: No"
    fi 

    if [ -w "$filename" ]; then
        echo "Writable: Yes"
    else
        echo "Writable: No"
    fi

    if [ -x "$filename" ]; then
        echo "Executable: Yes"
    else
        echo "Executable: No"
    fi
}

    read -p "Enter filename: " file
    check_file_permissions "$file"