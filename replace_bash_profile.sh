#!/bin/sh


if [ -f ~/.bash_profile ]; then
    cp ~/.bash_profile "./backup/.bash_profole.$(date +%F_%R)"
    cp .bash_profile ~/.bash_profile
fi
if [ -d ~/.bash ]; then
    cp -r ~/.bash "./backup/.bash.$(date +%F_%R)"
fi

cp -r ./bash ~/.bash

source ~/.bash_profile

