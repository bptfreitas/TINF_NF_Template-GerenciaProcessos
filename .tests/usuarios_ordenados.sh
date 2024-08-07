#!/bin/bash

cut -f1 -d":" /etc/passwd | sort > teste_usuarios_ordenados.txt 

if [[  `diff -q teste_usuarios_ordenados.txt usuarios_ordenados.txt` == "" ]]; then

	exit 0

else

	exit 1

fi
