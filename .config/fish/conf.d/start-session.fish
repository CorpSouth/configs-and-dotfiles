###############################
#Start session after tty login#
###############################

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        set -gx _JAVA_AWT_WM_NONREPARENTING 1
        set -gx QT_QPA_PLATFORM     wayland-egl
        set -gx XDG_CURRENT_DESKTOP sway
        set -gx XDG_SESSION_DESKTOP sway
        set -gx XDG_SESSION_TYPE    wayland
        exec sway
    end
end
