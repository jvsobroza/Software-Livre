#!/bin/bash

echo "Qual valor vai querer para a tabuada:"
read val
for i in $(seq 10)
do
    echo $i x $val = $(( i * val ))
done
