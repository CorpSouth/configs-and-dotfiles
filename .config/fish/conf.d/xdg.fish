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

end
