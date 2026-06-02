#!/usr/bin/bash

func_sum(){
    if [ $# -lt 2 ]
    then
        echo "Você não pasosu 2 parametros!"
        ./func_sum.sh
    else
        val_sum=$(($val1 + $val2))
    echo "Soma de $val1 + $val2 = $val_sum"
    fi
}
echo "Escreva 2 valores:"
read val1
read val2
func_sum $val1 $val2
