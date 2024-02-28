#!/usr/bin/env bash

clear

function assertEqualsZ()
{
    # Testes e Comparações
    # O resultado da expressão é retornado 0 para verdadeiro
    # ou não 0 para falso.

    var=Z
    test $var = w
    echo $?

    [ $var = Z ]
    echo $?
}

function discoverTheNumberAndLetter()
{
    read -p "Informe um número e uma letra: " num letra

    if [ \( "$num" -gt 0 -a "$num" -lt 10 \) -o \( $letra = v \) ]
        then
            echo "Acertou a faixa do número ou a letra..."
        else
            echo "Errou as duas informações..."
    fi
}

function testPassword()
{
    echo "Digite a senha: "
    read -s password

    comp=$(expr length $password)

    if [ "$comp" -lt 6 -o "$comp" -gt 9 ]
        then
            echo "Senha inválida.\nPor segurança não são aceitas
    senhas com menos de 6 caracteres ou mais de 9."
        else
            echo "Senha correta..."
    fi
}

function readFile()
{
    read -p "Qual livro você deseja: " book

    if grep $book ./livro.txt >> /dev/null
        then
            echo "O livro $book possui $(grep $book livro.txt | cut -f2) exemplares."
        else
            echo "Este livro não está na lista."
    fi
}
