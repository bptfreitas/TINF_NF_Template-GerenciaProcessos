#!/bin/bash

ls -R /etc 1> teste_saida_com_erros.txt 2>&1

if [[ `diff -q saida_com_erros.txt teste_saida_com_erros.txt` != "" ]]; then

	exit 1
	
else 

	exit 0
	
fi


