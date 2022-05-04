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

xwallpaper --stretch $HOME/Pictures/Wallpapers/CrimsonDuskMountains.jpg &

#############################
# start compositing manager #
#############################

sleep 1 &&
picom --experimental-backends &

########################
# autohide the xcursor #
########################

unclutter-xfixes --timeout 5 &

##################
# start xsession #
##################

exec cwm -c $HOME/.config/cwm/.cwmrc 
