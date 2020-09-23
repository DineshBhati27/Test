#!/bin/bash
counter=0
count=0
flag=1
while [ $counter -eq 1 ]
do
  num=$(($RANDOM % 9999 + 1000))
  ((count++))
  for (( i=2;i<$(($num/2));i++))
  do
    if [ $(($num%$i)) -eq 0 ]
    then
    flag=0
    fi
  done
   if [ $flag -eq 1 ]
   then
    echo "$num is prime"
    break
   fi
done

echo "Count:$count"
