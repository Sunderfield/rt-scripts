#!/bin/bash
echo Starting the rt test script

command -v cyclictest >/dev/null 2>&1 || { echo >&2 "I require cyclictest but it's not installed. Please install."; exit 1; }
