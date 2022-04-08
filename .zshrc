########
# init #
########

autoload -Uz compinit  
compinit

###########
# history #
###########

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=$HOME/.cache/.zsh_history
LESSHISTFILE="/dev/null"

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

#################
# custom prompt #
#################

PROMPT="%B%F{green}%<<%~ %f%b"

###################
# color variables #
###################

export TERM="xterm-256color"

#####################
# setting the $PATH #
#####################

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

##############
# completion #
##############

setopt ALWAYS_TO_END
setopt COMPLETE_IN_WORD

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

############################
# pipe to multiple outputs #
############################

setopt MULTI_OS

###################################
# setopt for correction prompting #
###################################

setopt correct

#######################################################
# enter directories without needing to 'cd' into them #
#######################################################

setopt AUTO_CD

################
# manpage path #
################

export MANPATH="/usr/local/man:$MANPATH"

#################
# default pager #
#################

export PAGER=less

############
# manpager #
############

export MANPAGER='/bin/bash -c "vim -MRn -c \"set buftype=nofile showtabline=0 ft=man ts=8 nomod nolist norelativenumber nonu noma\" -c \"normal L\" -c \"nmap q :qa<CR>\"</dev/tty <(col -b)"'

########################
# language environment #
########################

export LANG=en_US.UTF-8

##########
# editor #
##########

EDITOR='vim'

#####################
# compilation flags #
#####################

export ARCHFLAGS="-arch aarch64"

##############
# setoptions #
##############

setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

################
# unsetoptions #
################

unsetopt BEEP

###########
# vi mode #
###########

bindkey -v

#################
# bash insulter #
#################

if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

################################# 
# CUSTOM ALIASES START HERE     #
#################################
# refresh the $HOME/.zshrc file #
#################################

alias szsh='source $HOME/.zshrc'

###############################
# apt package manager aliases #
###############################

alias aptac='sudo apt autoclean'

alias aptap='sudo apt autopurge'

alias aptar='sudo apt autoremove'

alias aptbd='sudo apt build-dep'

alias aptcl='sudo apt changelog'

alias aptd='sudo apt depends'

alias aptdu='sudo apt dist-upgrade'

alias aptdl='sudo apt download'

alias aptes='sudo apt edit-sources'

alias aptfu='sudo apt full-upgrade'

alias apth='sudo apt help'

alias apti='sudo apt install'

alias aptin='sudo apt install --no-install-recommends --no-install suggests'

alias aptli='sudo apt list --installed'

alias aptm='sudo apt moo'

alias aptp='sudo apt policy'

alias aptpx='sudo apt purge --autoremove'

alias aptrd='sudo apt rdepends'

alias aptr='sudo apt remove'

alias apts='sudo apt search'

alias aptsh='sudo apt show'

alias aptxsrc='sudo apt showsrc'

alias aptsrc='sudo apt source'

alias aptux='sudo apt update; sudo apt upgrade -y'

###################
# SUMMON THE FIGS #
###################

alias cwmrc='vim ~/.config/cwm/.cwmrc'

alias dunstrc='vim ~/.config/dunst/dunstrc'

alias sxhkdrc='vim ~/.config/sxhkd/sxhkdrc'

alias vimrc='vim ~/.vim/vimrc'

alias xinitrc='sudo vim /etc/X11/xinit/xinitrc'

alias xresources='vim ~/.Xresources'

alias zshrc='vim ~/.zshrc'

##############
# ls aliases #
##############

alias ls='ls --color=auto'

###########
# YouTube #
###########

alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

###################################################
# safeguards to prevent total devastation of data #
###################################################

alias rm='rm -i --preserve-root'

alias cp='cp -n'

alias mv='mv -n'
