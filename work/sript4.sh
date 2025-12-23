#!/bin/bash

	read -p "First number: " num1
	read -p "Second number: " num2

	sum=$((num1 + num2))
	diff=$((num1 - num2))
	mult=$((num1 * num2))
	division=$((num1 / num2))

	echo "Adds: $sum"
	echo "Subtractcion: $diff"
	echo "Multiplication: $mult"
	echo "Divides: $division"
