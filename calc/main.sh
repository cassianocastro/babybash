#!/usr/bin/env bash

# Script executando as funções básicas da calculadora...

clear

showMenu()
{
    read -p "Calculadora Básica
Operações apenas com números inteiros

Escolha uma das opções abaixo:
1. Soma    | 2. Subtração | 3. Multiplicação
4. Divisão | 5. Sair
Opção? " option

    case $option in
        1) . ./somar.sh ;;
        2) . ./subtrair.sh ;;
        3) . ./multiplicar.sh ;;
        4) . ./dividir.sh ;;
        5) exit ;;
        *) "Opção inexistente!" ;
            clear ;
        showMenu ;;
    esac
}

showMenu
