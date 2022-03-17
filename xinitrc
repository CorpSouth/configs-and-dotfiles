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

sxhkd &

##############
# xresources #
##############

xrdb -merge .Xresources &

#####################
# wallpaper restore #
#####################

~/.fehbg &

####################
# autohide xcursor #
####################

xbanish -t 5 &

##############
# compositor #
##############

sleep 1 &&
xcompmgr -cCfF -r2 -o 0.98 -l-3 -t-3 -D10 -I 0.098 -O 0.098 &

##################
# start xsession #
##################

exec cwm -c ~/.config/cwm/.cwmrc 
