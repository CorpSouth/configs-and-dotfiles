#!/bin/sh

. $HOME/.wmvar

if [ -z "$(xdotool search --classname scratchpad)" ]; then
    $TERMINAL -bc -g 100x26 -name scratchpad &

else
    xdotool search --onlyvisible --classname scratchpad windowunmap \
        || xdotool search --classname scratchpad windowmap

fi
