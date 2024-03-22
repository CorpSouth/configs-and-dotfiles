#!/bin/sh

  compositor=picom
    if pgrep -x $compositor
    then
    pkill $compositor
    exit
    fi



    if ! pgrep -x $compositor
    then
    $compositor &>/dev/null &
    exit
    fi
