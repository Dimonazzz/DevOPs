#!/bin/bash

to_uppercase() {
    local input="$1"
    echo "${input^^}"
}


read -p "Enter a string: " text

uppercase=$(to_uppercase "$text")
echo "Uppercase: $uppercase"

