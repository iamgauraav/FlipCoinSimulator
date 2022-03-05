#!/bin/bash -x

read -p "Enter the number of  flip: " num

headCount=0
tailCount=0
count=0

while (($headCount<21 && $tailCount<21 ))
do
	flip=$(($((RANDOM%10))%2))
	if [ $flip -eq 1 ]
	then
		echo "Heads"
		headCount=$(($headCount+1))
	else
		echo "Tail"
		tailCount=$(($tailCount+1))
		count=$(($count+1))
	fi
done

echo "$heads=$headCount"
echo "$tails=$tailCount"

if [ $headCount -gt $tailCount ]
then	
	minDiff=$(($headCount - $tailCount))
	echo "Heads Won and win difference is $minDiff"
elif [ $headCount -lt $tailCount ]
then
	minDiff=$(($tailCount - $headCount))
	echo "Tails won and twin difference is $minDiff"
elif [ $headCount -eq $tailCount ]
then
	echo "Tie"
	while (($minDiff>=3))
	do
		continue
	done
fi
