#!/usr/bin/env bash

clear

# Comentários

function testArray()
{
    # Só funciona no bash
    camada=("Física" "Enlace" "Redes")
    echo As 3 camadas mais baixas da Internet são: ${camada[1]}
}

function testSpecialVars()
{
    echo "Programa Um!\nScript: $0"

    echo "\nForam passados $# argumentos."
    echo Os argumentos foram: $@.

    echo "
    Cidade...: $1
    Estado...: $2
    País.....: $3"
    shift 3
}

function testHash()
{
    echo O # é um caractere especial!
    echo O \# é um caractere especial!
}

function testFinalNewLine()
{
    echo Testando \
    o fim \
    de \
    linha!
}

function testSpecialChars()
{
    echo -n 'O # é um caractere especial!' # "-n para não pular de linha..."
    echo "O \# é um caractere especial!\n"

    echo "Este exemplo mostra o uso de alguns dos caracteres mostrados: \n
    Começando pela contra-barra \\
    Caracter hexadecimal \100
    Usando backspace\b
    Iniciando nova linha\n
    apagando o que foi \r escrito anteriormente na linha
    e tabulando \t horizontalmente e \v verticalmente..."
}

function testInputs()
{
    read -p "Digite um palavra: " algo a mais
    echo "Você digitou: \"$algo
    \"$a\"
    \"$mais\""

    read -p "Deseja continuar [s/n]? " response
    echo "Sua resposta foi: \"$response\""
}
