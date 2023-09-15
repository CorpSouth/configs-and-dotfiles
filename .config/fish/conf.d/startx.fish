#########################
#Run Startx on TYY Login#
#########################

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx $XINITRC -- -keeptty
    end
end
