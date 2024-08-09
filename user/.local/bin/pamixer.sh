#!/bin/sh

# Author: sharpicx 
# Edits: corpsouth

msgTag="pamixer"

case "$1" in
        up)
                pamixer --allow-boost -i 5
                volume="$(pamixer --get-volume-human)"
                dunstify "pamixer[+]" "$volume" -h int:value:"$volume" -h string:x-dunst-stack-tag:"$msgTag" -t 1000
                ;;
        down)
                pamixer --allow-boost -d 5
                volume="$(pamixer --get-volume-human)"
                dunstify "pamixer[-]" "$volume" -h int:value:"$volume" -h string:x-dunst-stack-tag:"$msgTag" -t 1000
                ;;
        mute)
                pamixer --allow-boost -t
                muted="$(pamixer --get-mute)"
                if "$muted" ; then
                        dunstify "pamixer[!]" "muted" -h int:value:"$volume" -h string:x-dunst-stack-tag:"$msgTag" -t 1000
                else
                        dunstify "pamixer[!]" "unmuted" -h int:value:"$volume" -h string:x-dunst-stack-tag:"$msgTag" -t 1000
                fi
                ;;
esac

