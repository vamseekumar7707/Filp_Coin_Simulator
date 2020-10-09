#!/bin/bash -x
#FLIP COIN SIMULATOR
countHead=0
countTail=0
for (( i=0; i<100; i++ ))
do
toss=$((RANDOM%2))

        if [ $toss -eq 0 ]
        then
         ((countHead++))
        else
        ((countTail++))

        fi
done

           echo "Head wins " $countHead

           echo "Tail wins " $countTail

