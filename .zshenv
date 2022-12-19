##############################################
# put all zsh dotfiles into $XDG_CONFIG_HOME # 
##############################################

ZDOTDIR=$HOME/.config/zsh

##############################
# Disable Caps Lock for Good #
##############################

#setxkbmap -option ctrl:nocaps

#############
# set $PATH #
#############

typeset -U path PATH
path=(~/.local/bin $path)
export PATH

#################
# xdg variables #
#################

export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state
#export USERXESSION="$XDG_CACHE_HOME/X11/xsession"
#export USERXSESSIONRC="$XDG_CACHE_HOME/X11/xsessionrc"
#export ALTUSERXSESSION="$XDG_CACHE_HOME/X11/Xsession"
#export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
#export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
#export XRESOURCES="$XDG_CONFIG_HOME/X11/xresources"


################
# qt variables #
################

#export QT_QPA_PLATFORMTHEME=qt5ct

########################
# default applications #
########################

#export EDITOR=nvim
#export TERMINAL=uxterm

#########################################
# manpager                              #
#########################################
# reserved for my custom distrobox home #
#########################################

#if [[ "$(command -v nvim)" ]]; then
#    export EDITOR='nvim'
#    export MANPAGER='nvim +Man!'
#    export MANWIDTH=999
#fi

##################
# wget variables #
##################

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

############################################
# Distrobox container management variables #
############################################

export DBX_CONTAINER_IMAGE="fedora:38"
export DBX_CONTAINER_MANAGER="podman"
export DBX_CONTAINER_NAME="Fedora-Rawhide"
export DBX_CONTAINER_CUSTOM_HOME="/var/home/corpsouth/.var/home/corpsouth"
export DBX_CONTAINER_HOME_PREFIX="~/.var"
