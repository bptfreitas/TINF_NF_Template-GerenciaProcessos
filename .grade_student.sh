#!/bin/bash

./questao1.sh

./questao2.sh

ps -e | grep sleep | awk '{print $1}' | xargs -I{} kill {}
