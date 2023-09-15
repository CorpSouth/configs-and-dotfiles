#################################
#Weather Information Via Wttr.in#
#################################

if status is-interactive

    if type -q curl
        alias at-tx-wttr 'curl wttr.in/Arlington+Texas'
    end

end
