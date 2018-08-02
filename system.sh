#!/bin/bash

# Este script traz informações do sistema

# Definição de variaveis
hora=`date | cut -d' ' -f4`
tempo=`uptime | awk -F" " '{print $3}' | sed -e s'|,||g'`i
users=`uptime | awk -F" " '{print $4}'`

# Limpa a shell
clear

# Prompt de escolha - Menu
echo -e "\Escolha a opcao desejada:\n"
echo 'Hora do sistema            [ 1 ]'
echo 'Tempo de sistema ligado    [ 2 ]'
echo 'Usuarios logados           [ 3 ]'
echo -e "Finalizar programa         [ 4 ]\n"

# Recebe o valor da variavel opt usuario
read opcao

case $opcao in
    1)
        echo -e "\nHora do sistema: $hora\n"
    ;;

    2)
       echo -e "\n O sistema esta ligado a $tempo\n " 
    ;;

    3)
       echo -e "Existem $users usuarios drogados\n"
    ;;

    4)
        echo -e "\nFim\n"
    ;;

    *)
        echo -e "\nOpcao invalida!\n"
    ;;
esac	
	 	   
