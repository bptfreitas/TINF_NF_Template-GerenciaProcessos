#!/bin/bash

cat mensagem1.txt mensagem2.txt mensagem3.txt > ./teste_concatenacao.txt

if [[ `diff -q ./mensagens.txt ./teste_concatenacao.txt` == "" ]]; then 

	exit 0

else

	exit 1

fi


