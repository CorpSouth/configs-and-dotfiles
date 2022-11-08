#!/bin/sh

# go back with .. #

. $HOME/.wmvar

while true; do
    
    dir=$(ls | cut -c 1-100 | $XMENU)
    if [ -d "$dir" ]; then
	cd $dir

    elif [ $dir == ":quit" ]; then
	break

    else
	vi-nuke.sh $dir & break 

    fi
done
 
