#!/bin/bash
input="$1"
RED='\033[0;31m'
NC='\033[0m'
while IFS= read <&3 -r line
do
    printf "${RED}$line${NC}\n"
    output=$(dig "$line")
    printf "$output"
    printf "\n\n--------------------------------------\n\n"

done 3< "$input"
