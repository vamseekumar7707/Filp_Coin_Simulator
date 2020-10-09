#!/bin/bash -x
#FLIP COIN SIMULATOR

countHead=0
countTail=0
while [ $countHead -ne 21 ] || [ $countTail -ne 21 ]
do
toss=$((RANDOM%2))

        if [ $toss -eq 0 ]
then

        ((countHead++))
if [ $countHead -eq 21 ]
        then
        echo "Head Wins by : " $(($countHead-$countTail))
        break
fi
else
      ((countTail++))
if [ $countTail -eq 21 ]
        then
        echo "Tail Wins by :" $(($countTail-$countHead))
        break
fi
fi
done
