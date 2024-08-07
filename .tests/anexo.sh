#!/bin/bash


if  [[ `diff -q ./.teste.txt ./mensagens.txt` == "" ]]; then 

	exit 0

else

	exit 1
	
fi
