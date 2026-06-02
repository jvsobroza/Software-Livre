echo "Digite seu nome:"
read nome
echo ""
echo "Qual time você torce? (1 gremio | 2 inter)"
read time
case $time in
    1)
        echo -e "\033[01;34;47m$nome\033[00m é gremista"
    ;;
    2)
        echo -e "\033[01;31;47m$nome\033[00m é Colorado"
    ;;
    *)
        echo "Valor inválido"
    ;;
esac

