#!/bin/sh

. $HOME/.wmvar 

for id in $(lsw); do
    window=$(atomx WM_CLASS $id)
    if [ "$window" = $TERMINAL ]; then
	echo "$(wname $id)"

    else
	echo "$window"

    fi
done | sort | uniq | sed -z "s/\n/ | /g"
