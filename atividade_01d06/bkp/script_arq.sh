#!/bin/bash

arqc=0
dire=0
total=0
for arq in *
do
    total=$((total + 1))
    if [ -d "$arq" ]
    then
        dire=$((dire + 1))
    elif [ -r $arq ]
    then
        arqc=$((arqc + 1))
    fi
done
echo "Total: $total"
echo "Total de diretórios: $dire "
echo "Total de arquivos: $arqc "
