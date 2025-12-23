#!/bin/bash

	read -p  "First number: " num1
	read -p  "Second number: " num2

	echo "Choose an condition:"
	echo "1. add"
	echo "2. subtract"
	echo "3. multiply"
	echo "4. divide"
	read condition

	if [ "$condition" = "1" ]; then
	result=$((num1 + num2))
	echo "Results: $result"

	elif [ "$condition" = "2" ]; then
	result=$((num1 - num2))
	echo "Result: $result"

	elif [ "$condition" = "3" ]; then
	result=$((num1 * num2))
	echo "Result: $result"

	elif [ "$condtion" = "4" ]; then
	result=$((num1 / num2))
	echo "Result: $result"

	else echo "Calculation cant be done choose other numbers"

	fi
