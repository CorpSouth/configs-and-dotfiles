################################
#Disable the Fish Shell Greeter#
################################

set fish_greeting

###################
#Exported Defaults#
###################

if type -q nvim
    set -gx EDITOR nvim
else if type -q nano 
    set -gx EDITOR nano
end

if type	-q nvim
    set	-x MANPAGER "nvim +Man!"
else if type -q less
    set	-x MANPAGER less
end

if type -q nvim
    set	-gx VISUAL nvim
else if type -q nano
    set	-gx VISUAL nano
end 

#########################
#Ignore History for Less#
#########################

set -gx LESSHISTFILE "-"

#########
#Pathing#
#########

set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/.var/app/ /var/usrlocal/bin $fish_user_paths

######
#TERM#
######

set -gx TERM xterm-256color

####################
#XDG Base Directory#
####################

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
