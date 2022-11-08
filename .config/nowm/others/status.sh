#!/bin/sh

. $HOME/.wmvar

infopid=$(pgrep info.sh)

if [ ! "$infopid" ]; then
    $TERMINAL -name status -g 48x8+4+4 -e info.sh

else
    pkill info.sh
fi

