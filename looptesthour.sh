#!/bin/bash 

# Verifica se usuario passou um parametro 
# O primeiro parametro informa ao script a qntidade de vezes do laco de repeticao
if [ "$1" = "" ] ; then
    CNT=999
else
    CNT=$1
fi

# Forca a variavel CNT ser numerica
CNT=$(expr $CNT '+' 0)

# Loop decremental que testa a hora pra ver a faixa de horario
while [ $CNT -gt 0 ] ; do
    HORA=$(date +%H)
    if [ $HORA -ge 8 -a $HORA -le 20 ] ; then
        echo "$CNT (slow)"
    else
        echo "$CNT (fast)"
    fi
    sleep 1
    CNT=$(expr $CNT '-' 1)
done
