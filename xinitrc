#!/bin/sh

##############
# policy kit #
##############

lxpolkit &

########################
# notification service #
########################

sleep 1 &&
dunst &

###############
# screen lock #
###############

xautolock -time 10 -locker slock &

##################
# hotkey service #
##################

sleep 1 &&
sxhkd &

##############
# xresources #
##############

xrdb -merge .Xresources &

##################
# set background #
##################

xwallpaper --center ~/Pictures/Wallpapers/NOBARSINCLUDED.png &

####################
# autohide xcursor #
####################

sleep 1 &&
xbanish &

##################
# system monitor #
##################

sleep 1 &&
urxvt -e btop &

##################
# start xsession #
##################

exec i3 
