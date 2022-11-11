#!/bin/sh

$TERMINAL -name fzf_run -g 60x10+300+280 -e bash -c 'cmd=$(compgen -c | sort -u | grep -v fzf | fzf --no-info); setsid -f $cmd'
