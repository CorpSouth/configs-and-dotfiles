###################################
#XDG Base Directory Specifications#
###################################

if status is-interactive
    
    ########
    #Common#
    ########
    
    if test -d "$HOME/.config"
        set -gx XDG_CONFIG_HOME "$HOME/.config"
    end

    if test -d "$HOME/.cache"
        set -gx XDG_CACHE_HOME "$HOME/.cache"
    end

    if test -d "$HOME/.local/share"
	set -gx XDG_DATA_HOME "$HOME/.local/share"
    end


    #####
    #X11#
    #####

    if test -d "$XDG_CACHE_HOME/X11"
    	set -gx ALTUSERXSESSION "$XDG_CACHE_HOME/X11/Xsession"
	set -gx ERRFILE         "$XDG_CACHE_HOME/X11/xsession-errors"
	set -gx USERXSESSION    "$XDG_CACHE_HOME/X11/xsession"
	set -gx USERXSESSIONRC  "$XDG_CACHE_HOME/X11/xsessionrc"
    end

    if test -d "$XDG_CONFIG_HOME/X11"
        set -gx XINITRC    "$XDG_CONFIG_HOME/X11/xinitrc"
	set -gx XRESOURCES "$XDG_CONFIG_HOME/X11/xresources"
	set -gx XSERVERRC  "$XDG_CONFIG_HOME/X11/xserverrc"
    end

end
