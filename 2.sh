#!/bin/bash
i=0
while [[ $i -lt $((60)) ]]
do
	result=$(cat /proc/meminfo | awk '/^MemTotal/ { total=$2 }
				/^MemFree/ { free=$2 } 
				END { print free*100/total }')
	echo "Percentatge lliure: $result"
	if [[ $result < $((10)) ]]
	then
		./createswap.sh swap$i
	fi
	i=$(($i+1))
	sleep 1
done
