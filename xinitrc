#!/bin/sh

##############
# policy kit #
##############

lxpolkit &

###############
# screen lock #
###############

xautolock -time 10 -locker slock &

#################
# hotkey daemon #
#################

sxhkd &

########################
# notification service #
########################

dunst &

##############
# xresources #
##############

xrdb -merge .Xresources &

##################
# x11 compositor #
##################

picom &

#####################
# wallpaper restore #
#####################

~/.fehbg &

####################
# autohide xcursor #
####################

unclutter &

##################
# start xsession #
##################

exec cwm
