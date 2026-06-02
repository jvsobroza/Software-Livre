#!/bin/bash

cat arq.txt | while read i
do
    hora=$(date +%H:%M:%S)
    echo "$hora - $i" >> texto3.txt
    sleep 1
done
