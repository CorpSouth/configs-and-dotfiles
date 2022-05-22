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

hsetroot -solid "#232831" &

############################
# start the system monitor #
############################

sleep 1 &&
urxvt -e btop &

#####################################
# start a basic scratchpad terminal #
#####################################

sleep 1 &&
x-terminal-emulator -name scratchpad &

##################
# start xsession #
##################

exec i3 
