#!/bin/sh
# /lib/elogind/system-sleep/lock.sh
# Lock before suspend integration with elogind

username=aaron
userhome=/home/$username
export XAUTHORITY="$userhome/.Xauthority"
export DISPLAY=":0.0"
case "${1}" in
    pre)
        su $username -c "/usr/bin/i3lock -c 000000" &
        sleep 1s;
        ;;
esac
