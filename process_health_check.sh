#!/bin/bash

PROCESS="java"

if pgrep $PROCESS > /dev/null
then
echo "$PROCESS is running"
else
echo "$PROCESS is NOT running"
fi
