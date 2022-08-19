##############################################
# put all zsh dotfiles into $XDG_CONFIG_HOME # 
##############################################

ZDOTDIR=$HOME/.config/zsh

#############
# set $PATH #
#############

typeset -U path PATH
path=(~/.local/bin $path)
export PATH

################
# xdg variables #
#################

export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state

#################
# gtk variables #
#################

export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

################
# qt variables #
################

export QT_QPA_PLATFORMTHEME=gtk3

#################
# vim variables #
#################

#export VIMINIT="source $XDG_CONFIG_HOME/nvim/init.vim"

#####################
# manpage variables #
#####################

export MANPAGER='/bin/bash -c "nvim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'
export MANPATH="/usr/local/man:$MANPATH"

########################
# default applications #
########################

export BROWSER=librewolf
export EDITOR=nvim
export TERMINAL=xfce4-terminal

####################
# set the language #
####################

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

##################
# wget variables #
##################

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

####################
# compilation flag #
####################

export ARCHFLAGS="-arch aarch64"
