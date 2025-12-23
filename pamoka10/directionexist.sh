#!/bin/bash

to_seeifdirfileexist() {
    local direname="$1"
    local filename="$2"
    local path=~/homework/pamoka10/$dir 
    local path1=~/homework/pamoka10/$file

    if [-d "$path" ]: then
        echo "Directory '$path' exists"
    else
        echo "Directory '$path' doesnt exists"
    fi

    if [-d "$path1" ]: then
        echo "Directory '$path1' exists"
    else
        echo "Directory '$path1' doesnt exists"
    fi
}

read -p "Enter directory name: " dirname
read -p "Enter file name: " filename

to_createdirorfile "$dirname" "$filename"