#!/bin/bash

mkdir temp
#Creating the necessary directories and a temporary directory.

mv * temp
mv temp/*/ .
#Moving everything inside temp directory and then moving directories back to their place.

mkdir largest
ls -S temp > sorted.txt #Listing files in temp large to small and printing the output in sorted.txt
read line < sorted.txt #Reading sorted.txt's first line
mv temp/$line ./largest #Moving the file with the name written in the first line of sorted.txt to largest

mkdir smallest
ls -Sr temp > sorted.txt #Listing files in temp small to large and overwriting the output in sorted.txt
read line < sorted.txt #Reading sorted.txt's first line
mv temp/$line ./smallest #Moving the file with the name written in the first line of sorted.txt to smallest

mv temp/* . #Moving everything back to their place
rm sorted.txt
rmdir temp          #\
rmdir smallest/temp # Making sure temp, which was not there in the beginning, is removed.
rmdir largest/temp  #/
clear
echo Done
