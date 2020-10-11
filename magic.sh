#!/bin/bash/ -x

echo "enter a number between 1 to 100"
read number
sumofnumber=0
while [ $sumofnumber -gt 9 -o $number -gt 0 ]
do 
	if [ $number -eq 0 ]
	then
		number=$sumofnumber
		sumofnumber=0
	fi
	sumofnumber=$(($sumofnumber+$(($number%10)) ))
	number=$(($number/10))
done
if [ $sumofnumber -eq 1 ]
then
   echo "given number is magic number"
else
   echo "given number is not a magic number"
fi
