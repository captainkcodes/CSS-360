#!/bin/bash
#Assignment 1.2

mkdir first second
DIR="~/Desktop/Unix/first"
DIR2="~/Desktop/Unix/second"
if [ -d "$DIR" -o "$DIR2" ]; then
	echo "Directories already exist! Moving on..."
fi
###############################################
echo -n "Enter how many files you want to make > "
read inpt
echo "You entered: $inpt"
echo "Now, $inpt, files will be created and moved: "

let sorter=$inpt/2

for ((i = 1; i <= inpt; i++))
	do
		touch file${i}.text
		if [[ $i -le $sorter ]];then
			mv file${i}.text ~/Desktop/Unix/first
		else
			mv file${i}.text ~/Desktop/Unix/second
		fi
	done

