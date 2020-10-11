#!/bin/bash/ -x
echo "enter a number :"
read number
count=0
while [ $count -le $number ]
do
   poweroftwo=$((2**$count))
   ((count++))

   if [ $poweroftwo -eq 256 ]
   then
        exit
   else	
	echo " power of two are:" $poweroftwo
   fi
done
