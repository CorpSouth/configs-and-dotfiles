#!/bin/bash

. $HOME/.wmvar

$TERMINAL -name 'xterm_launcher' -g 60x10+300+280 -e "fzf --no-sort -m < /proc/$$/fd/0 > /proc/$$/fd/1"
