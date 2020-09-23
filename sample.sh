#!/bin/bash -x

counter=0
count=0
sum=0
while [ $counter -eq 0 ]
do
   Dice1=$(($RANDOM%6+1))
   Dice2=$(($RANDOM%6+1))
  ((count++))
  sum=$(($sum+$Dice1+$Dice2))
  if [ $Dice1 -eq 6 -a $Dice2 -eq 6 ]
  then
    break
  fi
done

echo "Sum:$sum"
echo "Count:$count"

