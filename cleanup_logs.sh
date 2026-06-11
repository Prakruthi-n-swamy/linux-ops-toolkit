#!/bin/bash

LOG_DIR="/var/log"

find $LOG_DIR -type f -name "*.log" -mtime +30 -exec rm -f {} \;

echo "Old logs cleaned successfully"
