#!/bin/sh

wew | while read ev wid args; do
    case $ev in
        # foccurs on mapping requests
        MAP)
	    wattr o $wid || nowm_focus.sh $wid
	    ;;
    esac
done
