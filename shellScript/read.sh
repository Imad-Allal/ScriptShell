#! /bin/bash

echo "Enter 1st string"
read st1 #Comme un scanf 

echo "Enter 2nd string"
read st2

if [ "$st1" == "$st2" ]
then 	
	echo "Strings match correctly"
else
	echo "Strings don't match"
fi

echo "Enter 3rd string"
read st3

echo "Enter 4th string"
read st4

if [ "$st3" \< "$st4" ] #\< means <=
then
	echo "String 3 is smaller than String4"
else
	echo "String 4 is smaller"
	
fi	
c=$st3$st4
echo "$c" #Concatenation
echo ${st3^} #Premiere lettre majuscule
echo ${st3^^} #tout le mot en majuscule

