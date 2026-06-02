echo "Digite a sua idade:"
read idade
if [ $idade -lt 5 ]
then
    echo "Voce não tem idade suficiente!"
elif [ $idade -ge 5 -a $idade -le 12 ]
then
    echo "Proteção ativada"
elif [ $idade -ge 70 ]
then
    echo "Proteção ativada"
else
    echo "Proteção desativada"
fi
