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
    
    if type -q exa
        alias l  'exa'
        alias la 'exa -a'
        alias ll 'exa -lah'
        alias ls 'exa --color=auto'
    end

    #####################
    #Procs instead of ps#
    #####################

    if type -q procs
	alias ps 'procs'
    end

end
