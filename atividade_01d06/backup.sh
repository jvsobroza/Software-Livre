#!/usr/bin/bash

if [ $# -lt 2 ]
    then
        echo "Você não passou 2 parametros!"
        echo "Exemplo ./backup.sh origem destino"
    else
        pasta_org=$1
        pasta_dest=$2
        if [ ! -d $pasta_org/ ]
        then
            echo "Diga uma pasta de origem válida!"
        else
        if [ ! -d $pasta_dest/ ]
        then
            mkdir $pasta_dest
        fi
            cd "$pasta_org/"
            for arq in *
            do
                if [ -f "../$pasta_dest/$arq" ] 
                then
                    if [ $arq -nt "../$pasta_dest/$arq" ]
                    then
                        cp $arq ../$pasta_dest/
                        echo "Arquivo: $arq -> atualizado"
                    fi
                else
                    cp $arq ../$pasta_dest/
                    echo "Arquivo: $arq -> copiado"
                fi
            done
    fi
fi
