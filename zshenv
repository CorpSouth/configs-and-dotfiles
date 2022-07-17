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

#################
# xdg variables #
#################

export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_STATE_HOME=~/.local/state

#################
# X11 variables #
#################

export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XRESOURCES="$XDG_CONFIG_HOME/X11/xresources"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export USERXSESSION="$XDG_CACHE_HOME/X11/xsession"
export USERXSESSIONRC="$XDG_CACHE_HOME/X11/xsessionrc"
export ALTUSERXSESSION="$XDG_CACHE_HOME/X11/Xsession"
export ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"

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

export VIMINIT="source $XDG_CONFIG_HOME/vim/vimrc"

###################
# gnupg variables #
###################

export GNUPGHOME="$XDG_DATA_HOME/gnupg"

#####################
# manpage variables #
#####################

export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'
export MANPATH="/usr/local/man:$MANPATH"

########################
# default applications #
########################

export BROWSER=librewolf
export EDITOR=vim
export TERMINAL=urxvt

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
