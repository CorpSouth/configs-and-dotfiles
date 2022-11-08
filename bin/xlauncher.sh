#!/bin/sh

uxterm -name xlauncher -g 60x10+300+280 -e bash -c 'cmd=$(compgen -c | sort -u | grep -v fzf | fzf); setsid -f $cmd'
