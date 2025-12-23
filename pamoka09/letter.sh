#!/bin/bash

	read -p "Type any letter: " letter
	case $letter in
		a|e|i|o|u)
			echo "The letter is vowel. "
			;;
		*)
			echo "The letter is consonant."
			;;
	esac
