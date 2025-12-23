#!/bin/bash

	read -p "Choose a number:" num
	read -p "Choose number of lines u want to print:" lines

	count=1

	while [ $count -le $lines ]; do
		result=$((num * count))
		echo "$num x $count = $result"
		count=$((count + 1))
	done


