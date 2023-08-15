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
	set -gx MANPAGER 'nvim +Man!'
	set -gx VISUAL 'nvim'
    end

    #####
    #Top#
    #####

    if type -q btm
        set -gx SYSTOP 'btm'
      else if type -q btop
	set -gx SYSTOP 'btop'
      else if type -q htop
        set -gx SYSTOP 'htop'
    end

end
