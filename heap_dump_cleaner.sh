#!/bin/bash

DUMP_DIR="/opt/dumps"

find $DUMP_DIR -type f -name "*.hprof" -mtime +15 -exec rm -f {} \;

echo "Heap dumps cleaned"
