#!/bin/bash

num=$1 #Storing the original number.
sum=0 #Storing the result of the operation.

if [ $num -lt 10 ] #Not accepting numbers less than 10.
then
	echo Invalid input. Enter a number greater than 10.
else
	while [ $num -gt 0 ] #Repeats until all the digits of the original number are extracted.
	do
		digit1=$(($num % 10)) #Starting extraction from the right-most of the original number. 
		num=$(($num - $digit1)) #Subtracting the extracted number from the original number.
		num=$(($num / 10)) #Dividing the number by 10 in order to reduce its digits.
		digit1=$(($digit1 * 10)) #Converting the extracted number to a tens digit.

		digit2=$(($num % 10)) #Extracting the number next to the previous one.
		num=$(($num - $digit2)) #Same as previous.
        	num=$(($num / 10)) #SAP
		sum=$(($sum + $digit1 + $digit2)) #Adding the extracted numbers and updating sum.

		if [ $num -gt 0 ] #This is the transitional part between 2 couple of digits in the original number.
		then
			digit2=$(($digit2 * 10)) #Converting the last extracted number to tens digits.
			digit3=$(($num % 10)) #Extracting the next number.
			sum=$(($sum + $digit2 + $digit3)) #Adding these 2 numbers and updating sum.
		fi
	done
	clear
	echo $sum
fi
