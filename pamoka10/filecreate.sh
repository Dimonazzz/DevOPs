#!/bin/bash

to_createdirorfile() {
        local dirname="$1"
        local filename="$2"
    
    if [ ! -d "dirname" ]; then
        mkdir "$dirname"
        echo "Directory was created"
    else
        echo "Directory already exists"
    fi

    touch "$dirname/$filename"
    echo "File inside '$dirname' was created"

}

read -p "Enter directory name: " dir
read -p "Enter file name: " file


to_createdirorfile "$dir" "$file"