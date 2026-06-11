#!/bin/bash

THRESHOLD=80

df -h | awk '{print $5 " " $1}' | while read output;
do
usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)
partition=$(echo $output | awk '{print $2}')

if [ $usage -ge $THRESHOLD ]
then
echo "WARNING: $partition usage is ${usage}%"
fi

done
