###############################
#Merge Xresources if Available#
###############################

if status is-interactive

    if test -z "$XRESOURCES" -a "/bin/xrdb" = 1
        xrdb -merge "$XRESOURCES"
    end

end
