#!/bin/bash

occurences=0 #Storing the number of the word to be changed found in the file.


while read line #Loop to read the file line-by-line.
do
	if [ $line = $2 ] #Counting how many times the word exists in the file.
	then
		occurences=$(($occurences + 1))
	fi
done < $1


if [ $occurences -eq 0 ]
then #If the word does not exist in the file.
	clear
	echo No occurences of "\"$2\"" found in "\"$1\"".
else #If the word does exist in the file.
	sed -i s/$2/$3/ $1
	clear
	echo All $occurences occurence\(s\) of "\"$2\"" in "\"$1\"" has changed with "\"$3\"".
fi
