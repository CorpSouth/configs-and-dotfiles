# aliases
alias aliases="vim ~/.bash_aliases"

# configure bashrc
alias bashrc="vim ~/.bashrc"

# refresh bashrc in-place
alias rfbash="source ~/.bashrc"

# configure vimrc
alias vimrc="sudo vim /usr/share/vim/vimrc"

# grab the clock
alias c="tty-clock -t -c"

# access the terminal file manager
alias f="vifm"

# system monitor htop
alias h="htop"

# internet monitor
alias i="sudo iftop"

# thermals
alias t='watch -n 1 "vcgencmd measure_clock arm; vcgencmd measure_temp"'

# volume control
alias vol="alsamixer"

# browse my pictures
alias pictures="feh Pictures/"

# browse my wallpapers
alias wallpapers="feh .wallpaper"

# set the wallpaper by scale
alias fehbgs="feh --bg-scale"

# configure cwm
alias cwmrc="vim ~/.cwmrc"

# configure suckless screen locker utility
alias slockconf="vim ~/.config/suckless/slock/config.def.h"

# configure xinitrc
alias xin="sudo vim /etc/X11/xinit/xinitrc"

# simplify cd'ing into suckless source code locations
alias cdslock="cd ~/.config/suckless/slock"

# gracefully recompile suckless software with the following alias
alias finalize="sudo cp config.def.h config.h && sudo make clean install"

# access the ncurses raspberry pi configuration
alias rpic="sudo raspi-config"

# configure boot options for the raspberry pi
alias bctxt="sudo vim /boot/config.txt"

# configure dunst
alias dunstrc="vim .config/dunst/dunstrc"

# configure sxhkd
alias sxhkdrc="vim ~/.config/sxhkd/sxhkdrc"

# configure picom
alias pcnf="vim ~/.config/picom/picom.conf"

# configure .Xresources
alias xresources="vim .Xresources"

# git clone
alias gcl="git clone"

# check for system updates

alias upd="sudo apt update"

alias upg="sudo apt full-upgrade"

alias pau="pi-apps update"

# search apt
alias as="sudo apt search"

# invoke autoremove and purge
alias saarp="sudo apt autoremove --purge -y"

# restart the following services
alias restart-compositor="killall picom && picom &"

alias restart-notification="killall dunst && dunst &"

# flatpak aliases
alias fpu="flatpak update"

# flatpak theming for gtk requires the override variable, the "fpt0-9" alias scheme simplifies this

alias fpt1="sudo flatpak override --env=GTK_THEME=Matcha-alice-dark"

alias fpt2="sudo flatpak override --env=GTK_THEME=Matcha-dark-aliz"

alias fpt3="sudo flatpak override --env=GTK_THEME=Matcha-amethyst-dark"

alias fpt4="sudo flatpak override --env=GTK_THEME=Matcha-dark-azul"

alias fpt5="sudo flatpak override --env=GTK_THEME=Matcha-azure-dark"

alias fpt6="sudo flatpak override --env=GTK_THEME=Matcha-dark-pueril"

alias fpt7="sudo flatpak override --env=GTK_THEME=Matcha-dark-sea"

alias fpt8="sudo flatpak override --env=GTK_THEME=Matcha-tea-dark"

alias fpxc1="sudo flatpak override --env=XCURSOR_THEME=Material-Dark-Cursors"

alias fpxc2="sudo flatpak override --env=XCURSOR_THEME=Material-Light-Cursors"
