#!/bin/bash

func_mult(){
    if [ $# -lt 2 ]
    then
        echo "Você não pasosu 2 parametros!"
        ./func_mult.sh
    else
        val_mult=$(($val1 * $val2))
    echo "Multiplicação de $val1 * $val2 = $val_mult"
    fi
}
echo "Escreva 2 valores:"
read val1
read val2
func_mult $val1 $val2
