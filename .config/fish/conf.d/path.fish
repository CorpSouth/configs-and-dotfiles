##################
#Add to your PATH#
##################

if status is-interactive
    
    set -e fish_user_paths

    if test -d $HOME/.bin
        set -U fish_user_paths $HOME/.bin $fish_user_paths
    end

    if test -d $HOME/.local/bin
	set -U fish_user_paths $HOME/.local/bin $fish_user_paths
    end

    if test -d $HOME/.local/share/applications
	set -U fish_user_paths $HOME/.local/share/applications $fish_user_paths
    end

    if test -d $HOME/.var/app
	set -U fish_user_paths $HOME/.var/app $fish_user_paths
    end

    if test -d $HOME/Applications
	set -U fish_user_paths $HOME/Applications $fish_user_paths
    end

    if test -d /var/usrlocal/bin
	set -U fish_user_paths /var/usrlocal/bin $fish_user_paths
    end
end
