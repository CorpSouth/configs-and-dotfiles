#########################################################################
#This corrects behavior in some CLI programs and other special terminals#
#########################################################################

if status is-interactive

    set -gx TERM 'xterm-256color'

end
