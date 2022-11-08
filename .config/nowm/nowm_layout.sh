#!/bin/sh

. $HOME/.wmvar

OPT=$1                     # input
FW=$(pfw)                  # focused window
CMW=$(lsw | wc -l)         # count maped windows
RW=$(wattr w $(lsw -r))    # root width
RH=$(wattr h $(lsw -r))    # root height
SW=$((RW - 2*BW))          # usable screen width
SH=$((RH - 2*BW))          # usable screen height

if [ -n "$(pfw)" ]; then
    case $OPT in
	monocule)
	    for wid in $(lsw); do      # all windows at full screen 
		wtp 0 0 $SW $SH $wid
	    done
	    ;;
	split) 
	    split=$((SW / 2 - BW))     # left and right width
	    xstack=$((SW / 2 + BW))    # rigth X coordinate
	    
	    wtp 0 0 $split $SH $FW    # focused window on the left

	    for wid in $(lsw | grep -v $FW); do    # rest of the windows on the rigth
		wtp $xstack 0 $split $SH $wid
	    done
	    ;;
	tiling)
	    wunfocus=$((CMW - 1))         # count unfocused windows
	    wmaster=$((MASTER - 2*BW))    # master width
	    xstack=$MASTER                # stack X coordinate
	    ystack=0                      # initial stack Y cooordinate
	    wstack=$((SW - MASTER))       # stack width
	    hstack=$((SH / wunfocus))     # stack heigth 

	    wtp 0 0 $wmaster $SH $FW    # focused window in master

	    for wid in $(lsw | grep -v $FW); do    # unfocused windows in stack
		wtp $xstack $ystack $wstack $hstack $wid
		ystack=$((ystack + hstack))    # incremental stack Y corrdinate
	    done
	    ;;	    
	cascade)
	    w=900                        # windows width
	    h=600                        # windows heigth
            x=$(((RW - w) / (CMW*2)))    # initial X coordinate
	    y=$(((RH - h) / (CMW*2)))    # initial Y coordinate
	    xmax=$(((RW - w) / CMW))     # function X value
	    ymax=$(((RH - h) / CMW))     # function Y value
	    
	    for wid in $(lsw); do    # windows in cascade
		wtp $x $y $w $h $wid
		x=$((x + xmax))    # incremental X value
		y=$((y + ymax))    # incremental Y value
	    done
	    ;;
    esac
fi

