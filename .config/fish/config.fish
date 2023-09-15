#############################################################################
#"Weh" stuff goes here, refer to 'conf.d/' and 'functions' for useful things#
#############################################################################

if status is-interactive

    #############
    #Fetch Stuff#
    #############

    if type -q fastfetch
	fastfetch
    else if type -q neofetch
	neofetch
    else if type -q pfetch
        PF_INFO='ascii cpu de editor host kernel memory os pkgs shell uptime wm palette' pfetch
    else if type -q uname
	uname -a
    end

end
