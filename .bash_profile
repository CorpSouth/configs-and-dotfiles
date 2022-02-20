##############################################
# automated starting of x-session upon login #
##############################################

[[ $(tty)="/dev/tty1" ]] && exec startx
