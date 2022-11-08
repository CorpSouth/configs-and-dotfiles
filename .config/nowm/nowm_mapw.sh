#!/bin/sh

. $HOME/.wmvar

OPT=$1                                             # input
MSNAPSHOT=$(atomx WM_SNAPSHOT $(lsw) | uniq)       # maped snap
USNAPSHOT=$(atomx WM_SNAPSHOT $(lsw -u) | uniq)    # unmaped snap

if [ -n "$OPT" ]; then
    case $OPT in
	wtogle)    # map and unmap windows
	    if [ -n "$(lsw -a)" ]; then    # if any window unmaped
		mapw -t $(for wid in $(lsw -a); do    # show them in xmenu
			      printf '%s\n' "$wid | $(atomx WM_CLASS $wid) | $(wname $wid) | $(wattr m $wid && echo '(M)')"
			 done | $XMENU)
	    fi
	    ;;
	add)    # add windows to snap
	    if [ -n "$(lsw)" ]; then    # if any window maped
		atomx WM_SNAPSHOT="$($XMENU < .nowm_names)" $(lsw)    # name and include
	    fi
	    ;;
	stogle)    # togle snap
	    if [ -n "$USNAPSHOT" ]; then    # if any snap maped or unmaped
		starget=$(printf "$USNAPSHOT" | $XMENU)    # unmaped snap target
		if [ -n "$starget" ]; then    # if any snap unmaped
		    mapw -u $(for wid in $(lsw); do    # unmap others
				  printf '%s\n' "$wid $(atomx WM_SNAPSHOT $wid)"
			      done | grep "$MSNAPSHOT")
	            mapw -m $(for wid in $(lsw -u); do    # unmaped snap target
                                  printf '%s\n' "$wid $(atomx WM_SNAPSHOT $wid)"
                              done | grep "$starget")
                fi
            fi
            ;;
    esac
fi

    

	      
	
