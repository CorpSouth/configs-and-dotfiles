#!/bin/sh

. $HOME/.wmvar

$TERMINAL -name 'xterm_prompt' -g 60x2+300+360 -e bash -c 'cmd=$(cat /dev/null | fzf --print-query); setsid -f $cmd'
