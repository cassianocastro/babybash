#!/usr/bin/env bash

dividir()
{
    clear
    read -p "Informe o primeiro número: " num1
    read -p "Segundo número: " num2

    echo "Resposta: `expr $num1 "/" $num2`"
    showMenu
}

dividir
