#!/bin/bash/ -x
money=100
while [ $money -gt 0 ]
do
	if [ $((RANDOM%2)) -eq 1 ]
	then
           echo "gambler gain one rupee"
    	   ((money++))
	else
   	   echo "gambler loose one rupee"
   	   ((money--))
	fi

	if [ $money -eq 200 ]
	then
   	   echo "gambler reaches a gole of 200 rupees in betting"
   	   exit
	elif [ $money -eq 0 ]
	then
   	   echo "gambler looses all money in betting"
   	   exit
	else
           continue
	fi
done
