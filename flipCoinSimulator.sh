#!/bin/bash -x

flip=$(($((RANDOM%10))%2))

if [ $flip -eq 1 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi
