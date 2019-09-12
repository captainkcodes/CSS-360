#!/bin/bash
#Assignment 1.1

echo -n "Enter how many files you want to make > "
read inpt
echo "You entered: $inpt"
echo "Now, $inpt, files will be created: "

for ((i = 1; i <= inpt; i++))
	do
		touch file${i}.text
	done

