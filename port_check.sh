#!/bin/bash

PORT=8080

if netstat -an | grep LISTEN | grep $PORT
then
echo "Port $PORT active"
else
echo "Port $PORT inactive"
fi
