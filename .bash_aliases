#############################
# refresh the bashrc source #
#############################

alias rfbash='source ~/.bashrc'

#########################
# simplify apt commands #
#########################

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

alias aptS='sudo apt show'

alias aptxsrc='sudo apt showsrc'

alias aptsrc='sudo apt source'

alias aptux='sudo apt update; sudo apt upgrade -y'

###################
# SUMMON THE FIGS #
###################

alias aliases='vim ~/.bash_aliases'

alias bashrc='vim ~/.bashrc'

alias dunstrc='vim ~/.config/dunst/dunstrc'

alias i3-Config='vim ~/.config/i3/config'

alias i3-Colors='vim ~/.config/i3/i3-Colors.conf'

alias i3-Rules='vim ~/.config/i3/i3-Rules.conf'

alias i3-Workspaces='vim ~/.config/i3/i3-Workspaces.conf'

alias picom.conf='vim ~/.config/picom/picom.conf'

alias sxhkdrc='vim ~/.config/sxhkd/sxhkdrc'

alias vimrc='vim ~/.vim/vimrc'

alias xinitrc='sudo vim /etc/X11/xinit/xinitrc'

alias xresources='vim ~/.Xresources'

#########################
# bookmark-like aliases #
#########################

alias 0='cd ~/.config; ls -ACFl1'

alias 1='cd ~/Documents; ls -ACFl1'

alias 2='cd ~/Downloads; ls -ACFl1'

alias 3='cd ~/.git; ls -ACFl1'

alias 4='cd ~/Music; ls -ACFl1'

alias 5='cd ~/Pictures; ls -ACFl1'

alias 6='cd ~/Screenshots; ls -ACFl1'

alias 7='cd ~/Templates; ls -ACFl1'

alias 8='cd ~/.local/bin; ls -ACFl1'

alias 9='cd ~/.local/share/Trash; ls -ACFl1'

alias 10='cd ~/Videos; ls -ACFl1'

alias 11='cd ~/Videos/yt-dlp; ls -ACFl1'

alias 12='cd ~/.vim; ls -ACFl1'

alias 13='cd ~/Wallpapers; ls -ACFl1'

##############
# ls aliases #
##############

alias ll='ls -l'
alias ll='ls -A'
alias l='ls -CF1'

#####################
# fzf customization #
#####################

# the basic settings that make fzf work the way I want it to

alias fzf='fzf -e -i -m --color=16'

########################
# image viewer aliases #
########################

alias i='feh'

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

# always prompt before deletion, use the rm command responsibly!

alias rm='rm -i --preserve-root'

# do not overwrite potentially critical files

alias cp='cp -n'

alias mv='mv -n'
