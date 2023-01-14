#!/bin/bash

mkdir temp
#Creating a temporary directory for storing files and subdirectories that are not wanted deleted.

mv $1/makefile temp
mv $1/Makefile temp
mv $1/*.c temp
mv $1/*.h temp
mv $1/*/ temp
#Moving files and subdirectories from the target directory to the "temp" directory.

rm $1/*
#Deleting everything remaining in the target directory.

mv temp/makefile $1
mv temp/Makefile $1
mv temp/*.c $1
mv temp/*.h $1
mv temp/*/ $1
#Moving files and subdirectories back to their place.

rmdir temp
#Removing the temporary directory.

clear
echo Done
#Clears the terminal and informs the user that the process is finished.
