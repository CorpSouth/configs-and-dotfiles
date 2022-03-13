#!/bin/sh

##############
# policy kit #
##############

lxpolkit &

###############
# screen lock #
###############

xautolock -time 10 -locker slock &

##############
# xresources #
##############

xrdb -merge .Xresources &

##################
# x11 compositor #
##################

sleep 1 &&
xcompmgr &

#####################
# wallpaper restore #
#####################

nitrogen --restore &

####################
# autohide xcursor #
####################

xbanish -t 5 &

##################
# start xsession #
##################

exec cwm -c ~/.config/cwm/.cwmrc 
