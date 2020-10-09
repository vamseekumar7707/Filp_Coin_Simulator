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
        Headdiff=$(($countHead-$countTail))
        echo "Head Wins by : " $Headdiff

        break
fi
        else
        ((countTail++))
        if [ $countTail -eq 21 ]
        then
        Taildiff=$(($countTail-$countHead))

        echo "Tail Wins by :" $Taildiff
        break

fi
fi
done

echo $Headdiff
echo $Taildiff

#Tie situation

if [ $Headdiff -eq 0 ] || [ $Taildiff -eq 0 ]
  then

while [ $Headdiff -gt 2 ] || [ $Taildiff -gt 2 ]

  do
  toss=$((RANDOM%2))

        if [ $toss -eq 0 ]
         then

        ((countHead++))
if [ $countHead -gt 2 ]
        then
        Headdiff=$(($countHead-$countTail))

        echo "First time Head/Tail is same, Now Head Wins by : " $Headdiff
        break
fi
        else
        ((countTail++))
        if [ $countTail -gt 2 ]
        then
        Taildiff= $(($countTail-$countHead))
echo "First time Head/Tail is same, Now Tail Wins by :" $Taildiff
        break

fi
fi
done


fi

