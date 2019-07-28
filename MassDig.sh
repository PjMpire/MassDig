#!/bin/bash
input="$1"
lineNumber="1"
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'
while IFS= read <&3 -r line
do
    printf "${YELLOW}$lineNumber${NC}\n\n"
    printf "${RED}$line${NC}\n"
    output=$(dig "$line")
    printf "$output"
    printf "\n\n--------------------------------------\n\n"
    lineNumber=$((lineNumber + 1))
done 3< "$input"
