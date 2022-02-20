##############################################
# automated starting of x-session upon login #
##############################################

[[ $(tty)="/dev/tty1" ]] && exec startx

###################################
# custom commands upon bash login #
###################################

pfetch; ls -CF1
