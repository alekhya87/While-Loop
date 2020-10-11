#!/bin/bash/ -x
heads=0
tails=0
flips=1
while [ $flips -le 22 ]
do
    ((flips++))
    if [ $((RANDOM%2)) -eq 1 ]
    then
       echo "head"
       ((heads++))
    else
       echo "tail"
       ((tails++))
    fi

    if [ $heads -eq 11 ]
    then
       echo "heads win"
       exit
    elif [ $tails -eq 11 ]
    then
       echo "tails win"
       exit
    else 
       continue
    fi
done
