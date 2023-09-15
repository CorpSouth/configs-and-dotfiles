######################
#Default Applications#
######################

if status is-interactive

    ########
    #Editor#
    ########
    
    if type -q nvim
	alias vi 'nvim'
	alias vim 'nvim' 
	set -gx EDITOR nvim
      else if type -q nano
        alias vi 'nano'
        alias vim 'nano'
        set -gx EDITOR nano
    end

    #######
    #Pager#
    #######

    if type -q nvim
        set -gx PAGER 'nvim +Man!'
    end

    #####
    #Top#
    #####

    if type -q btm
        alias top 'btm'
        set -gx SYSTOP 'btm'
      else if type -q btop
        alias top 'btop'
	set -gx SYSTOP 'btop'
      else if type -q htop
        alias top 'htop'
        set -gx SYSTOP 'htop'
    end

end
