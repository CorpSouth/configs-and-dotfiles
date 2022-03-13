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

xcompmgr &

#####################
# wallpaper restore #
#####################

nitrogen --restore &

###############
# set xcursor #
###############

xsetroot -cursor_name left_ptr &

####################
# autohide xcursor #
####################

xbanish -t 5 &

##################
# start xsession #
##################

sleep 1 &&
exec cwm -c ~/.config/cwm/.cwmrc 
