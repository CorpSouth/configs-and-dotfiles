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

xwallpaper --center $HOME/Pictures/Wallpapers/CrimsonDuskMountains.jpg &

####################
# autohide xcursor #
####################

sleep 1 &&
xbanish &

#############################
# start compositing manager #
#############################

sleep 1 &&
picom --experimental-backends &

##################
# start xsession #
##################

exec cwm -c $HOME/.config/cwm/.cwmrc 
