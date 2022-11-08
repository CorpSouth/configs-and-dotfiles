#!/bin/sh

####################################################
# For a comfortable experience, I highly recommend #
# placing this script at the end of your $XINITRC  #
####################################################
# exec focu_watcher.sh                             #
####################################################

wew | while read ev wid args; do
    case $ev in
        MAP)
	    wattr o $wid || focus.sh $wid
	    ;;
        UNMAP)
	    focus.sh last $wid
	    ;;
    esac
done
