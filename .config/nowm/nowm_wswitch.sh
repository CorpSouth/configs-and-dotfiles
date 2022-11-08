#!/bin/sh

. $HOME/.wmvar

TARGET=$(\
    for wid in $(lsw); do
        printf '%s\n' "$wid | $(atomx WM_CLASS $wid) | $(wname $wid)"
    done | $XMENU | cut -d '|' -f 1)

nowm_focus.sh "$TARGET"
