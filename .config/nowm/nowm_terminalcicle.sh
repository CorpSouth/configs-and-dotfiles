#!/bin/bash

. $HOME/.wmvar 

TARGET=$(
    for wid in $(lsw); do
	printf '%s\n' "$wid | $(atomx WM_CLASS $wid)"
    done | grep "$TERMINAL" | cut -d '|' -f 1 | head -n 1)

nowm_focus.sh $TARGET

