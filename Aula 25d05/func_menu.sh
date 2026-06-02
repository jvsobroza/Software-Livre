#!/bin/bash

echo "=== MENU DE CONTAS ==="
opt=0
echo ""
while [ $opt != 6 ]
do
    echo "-------------------------"
    echo "|== OPÇÕES =============|"
    echo "|== 1 - SOMA ===========|"
    echo "|== 2 - SUBTRAÇÃO ======|"
    echo "|== 3 - DIVISÃO ========|"
    echo "|== 4 - MULTIPLICAÇÃO ==|"
    echo "|== 5 - TABUADA ========|"
    echo "|== 6 - SAIR ===========|"
    echo "-------------------------"
    echo "Escreva a opção:"
    read opt
    echo ""
    case $opt in
        1)
        ./func_sum.sh
        echo ""
        ;;
        2)
        echo "Insira 2 valores:"
        read val1
        read val2
        ./func_sub.sh $val1 $val2
        echo ""
        ;;
        3)
        echo "Insira 2 valores:"
        read val1
        read val2
        ./func_div.sh $val1 $val2
        echo ""
        ;;
        4)
        ./func_mult.sh
        echo ""
        ;;
        5)
        ./func_tab.sh
        echo ""
        ;;
        *)
        echo "Insira um valor válido!"
        echo ""
        ;;
    esac
done
