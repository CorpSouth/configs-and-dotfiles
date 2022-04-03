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

########################
# set background color #
########################

hsetroot -solid "#4E5247"

####################
# autohide xcursor #
####################

xbanish &

##################
# start xsession #
##################

exec cwm -c ~/.config/cwm/.cwmrc 
