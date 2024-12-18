#!/bin/bash

which pinta > /dev/null

if [[ $? -ne 0 ]]; then

	echo "ERRO: 'pinta' nao instalado!"
	exit 1

fi

which google-chrome > /dev/null

if [[ $? -ne 0 ]]; then

	echo "ERRO: 'google-chrome' nao instalado!"
	exit 1

fi

exit 0
