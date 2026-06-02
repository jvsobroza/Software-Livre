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
        #criação da pasta
            mkdir $pasta_dest
        fi
            #entrando na pasta
            cd "$pasta_org/"
            for arq in *
            do
                #verificação se o arquivo existe na cópia
                if [ -f "../$pasta_dest/$arq" ] 
                then
                    #verificação se o arquivo da origem é mais recente
                    if [ $arq -nt "../$pasta_dest/$arq" ]
                    then
                        cp $arq ../$pasta_dest/
                        echo "Arquivo: $arq -> atualizado"
                    fi
                else
                    #se não existir, apenas copiar
                    cp $arq ../$pasta_dest/
                    echo "Arquivo: $arq -> copiado"
                fi
            done
    fi
fi
