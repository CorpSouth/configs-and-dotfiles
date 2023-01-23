#################################################
#Base16-Shell for Fish                          #
#################################################

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

################################
#Disable the Fish Shell Greeter#
################################

set fish_greeting

###################
#Exported Defaults#
###################

set -gx BROWSER librewolf

if grep -qs micro /usr/bin/nvim
    set -gx EDITOR nvim
else
    set -gx EDITOR nano
end

set -gx TERM xterm-256color

if grep -qs micro /usr/bin/nvim
    set	-gx VISUAL nvim
else
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

####################
#XDG Base Directory#
####################

set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_DATA_HOME "$HOME/.local/share"
