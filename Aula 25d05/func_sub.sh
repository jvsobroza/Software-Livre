#!/usr/bin/bash

if [ $# -lt 2 ]
then
    echo "Você não passou 2 parametros!"
    echo "Exemplo ./func_sub.sh valor1 valor2"
else
    val1=$1
    val2=$2
    val_sub=$(($1 - $2))
    echo "Valor da subtração de $1 - $2 = $val_sub"
fi
