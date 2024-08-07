#!/bin/bash

which apache

if [[ $? -q 0 ]]; then

	exit 0

else 

	exit 1

fi
