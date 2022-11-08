#!/bin/sh

ACT=$(echo "pause\ncontinue\nkill" | fzf --exact --print-query | tail -n 1)
PROC=$(pgrep -a -u marulo |  cut -c 1-100 | fzf --exact --print-query | tail -n 1 | cut -d ' ' -f 1)

if [ -n "$ACT" ]; then
    if [ -n "$PROC" ]; then
	case $ACT in
	    pause)
		kill -STOP $PROC
		;;
	    continue)
		kill -CONT $PROC
		;;
	    kill)
		kill $PROC
		;;
	esac
	
    fi
fi


