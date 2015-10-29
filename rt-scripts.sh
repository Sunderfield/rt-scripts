#!/bin/bash
echo Starting the rt test script

DATELINE=$(date +%Y-%m-%d_%H:%M)

command -v cyclictest >/dev/null 2>&1 || { echo >&2 "I require cyclictest but it's not installed. Please install."; exit 1; }

cyclictest -t1 -p 80 -i 500 -n -l 1000000 -h 100 -q >> "unloaded_$DATELINE.log"



