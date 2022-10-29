##############################################
# put all zsh dotfiles into $XDG_CONFIG_HOME # 
##############################################

ZDOTDIR=$HOME/.config/zsh

########
# TERM #
########

export TERM=xterm-256color

##############################
# Disable Caps Lock for Good #
##############################

setxkbmap -option ctrl:nocaps

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

################
# qt variables #
################

export QT_QPA_PLATFORMTHEME=qt5ct

########################
# default applications #
########################

export EDITOR=nvim

############
# manpager #
############

if [[ "$(command -v nvim)" ]]; then
    export EDITOR='nvim'
    export MANPAGER='nvim +Man!'
    export MANWIDTH=999
fi

##################
# wget variables #
##################

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
