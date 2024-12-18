#!/bin/bash

expected=2

found=`wc -l jobs.txt | awk '{ print $1 }'`

if [[ $expected -ne $found ]]; then

    echo "ERRO! Parece que seu arquivo de jobs nao contem a quantidade esperada ($expected)!"

    exit 1

fi

grep -q 'chrome' jobs.txt

if [[ $? -ne 0 ]]; then
    echo "ERRO! Chrome nao esta na sua lista de processos!"
    exit 1
fi

grep -q 'pinta' jobs.txt

if [[ $? -ne 0 ]]; then
    echo "ERRO! Pinta nao esta na sua lista de processos!"
    exit 1
fi

exit 0





