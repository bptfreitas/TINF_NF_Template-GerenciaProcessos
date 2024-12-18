#!/bin/bash

sleep 2

grep -q 'chrome' pids.txt 

if [[ $? -ne 0 ]]; then

    echo "ERRO: 'chrome' nao foi iniciado!"
    exit 3

fi

grep -q 'mono' pids.txt 

if [[ $? -ne 0 ]]; then

    echo "ERRO: 'pinta' nao foi iniciado!"
    exit 2

fi

exit 0