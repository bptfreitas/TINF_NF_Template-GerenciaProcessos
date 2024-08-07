#!/bin/bash

expected=`grep -E -c 'a' ./mensagens.txt`

real=`grep -E [0-9]+ ./letras.txt`

if [[ ${real} -eq ${expected} ]]; then 

	exit 0

else 

	exit 1
	
fi

