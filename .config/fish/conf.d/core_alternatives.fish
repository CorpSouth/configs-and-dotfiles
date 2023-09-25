################################
#Alternatives to core utilities#
################################

if status is-interactive
    
    ####################
    #Bat instead of cat#
    ####################
    
    if type -q bat
        alias cat 'bat'
    end
    
    ###################
    #Exa instead of ls#
    ###################
    
    if type -q eza
        alias l  'eza'
        alias la 'eza -a'
        alias ll 'eza -lah'
        alias ls 'eza --color=auto'
    end

    #####################
    #Procs instead of ps#
    #####################

    if type -q procs
	alias ps 'procs'
    end

end
