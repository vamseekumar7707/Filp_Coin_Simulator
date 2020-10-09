#!/bin/bash -x
#FLIP COIN SIMULATOR
 countHead=0
 countTail=0
toss=$((RANDOM%2))
        if [ $toss -eq 0 ]
        then
        echo "Head wins"
        else
        echo "Tail wins"
	fi
