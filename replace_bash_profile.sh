#!/bin/sh


if [ -f ~/.bash_profile ]; then
    cp ~/.bash_profile "./backup/.bash_profole.$(date +%F_%R)"
    cp .bash_profile ~/.bash_profile
fi
if [ -f ~/.precommand ]; then
    cp ~/.precommand "./backup/.precommand.$(date +%F_%R)"
    cp .precommand ~/.precommand
fi
