#!/usr/bin/bash

func_div(){
     if [ $# -lt 2 ]
    then
        echo "Você não passou 2 parametros!"
        echo "Exemplo ./func_div.sh valor1 valor2"
    else
        val1=$1
        val2=$2
        val_div=$(($val1 / $val2))
        echo "Divisão de $val1 / $val2 = $val_div"
    fi
}

func_div $1 $2
