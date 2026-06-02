#!/bin/bash

count=1
countNull=0
cat arq.txt | while read i
do
    for countNull in $(seq $count)
    do
        echo "$i" >> texto2.txt
    done
    count=$((count+1))
done
