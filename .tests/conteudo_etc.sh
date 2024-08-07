#!/bin/bash

ls -R /etc 1> teste_saida.txt 2> teste_erros.txt

if [[ `diff -q saida.txt teste_saida.txt` != "" ]]; then

	exit 1
	
fi

if [[ `diff -q erros.txt teste_erros.txt` != "" ]]; then

	exit 1
	
fi	

exit 0


