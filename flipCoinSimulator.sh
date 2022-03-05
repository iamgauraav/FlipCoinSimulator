#!/bin/bash -x

read -p "Enter the number of  flip: " num
headCount=0
tailCount=0
count=0

for ((i=0;i<=num;i++))
do
	randomCheck=$(($(($RANDOM%10))%2))
	if [ $flip -eq 1 ]
	then
		echo "HEADS"
		headCount=$(($headCount+1))
	else
		echo "TAILS"
		tailCount=$(($tailCount+1))
	fi
done
echo "Heads=$headCount"
echo "Tails=$tailCount"
