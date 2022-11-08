#!/bin/sh

. $HOME/.wmvar

LOCK="slock"    # lock screen monitor
MOFF="xset dpms force off"    # poweroff monitor
HB="doas pm-hibernate"    # hibernate
RB="doas shutdown -r now"    # reboot
POFF="doas shutdown -h now"    # poweroff
EXIT="pkill wew && pkill sxhkd"    # exit session
PROMPT="lock\nmonitor-off\nhalt\nreboot\nsuspend\nlogout"

option=`echo $PROMPT | $XMENU`
if [ ${#option} -gt 0 ]; then
    case $option in
	lock)
	    $LOCK
	    ;;
	monitor-off)
	    $MOFF
	    ;;
	suspend)
	    $HB
	    ;;
	halt)
            $POFF
	    ;;
	reboot)
            $RB
            ;;
	logout)
            $EXIT
	    ;;
	*)
	  ;;
      esac

else
    exit 0
fi
