#!/bin/sh

. $HOME/.wmvar 

TARGET=$(pfw)

if [ "$(atomx WM_CLASS $TARGET)" = "$TERMINAL" ]; then
    chwn "_>$($XMENU < ~/.nowm_rename)" $TARGET
fi
