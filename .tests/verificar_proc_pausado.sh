#!/bin/bash

state=`ps -x | grep pinta | head -1 | awk '{ print $3 }' | grep 'T'`

if [[ $state == "T" ]]; then
    exit 0

else 
    echo "ERRO! Processo nao esta pausado!"
    exit 1
fi