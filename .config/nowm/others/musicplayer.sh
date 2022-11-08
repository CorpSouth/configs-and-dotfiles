#!/bin/sh

# rp_musicplayer by @root.sti

. $HOME/.wmvar

MDIR="$HOME/Música/"                                                 # music dir

INPUT=$(echo -e "play\nwaves\nvector\nexit" | $XMENU)
case $INPUT in
    play)
	for f in $(find $MDIR -type f | $XMENU); do ffplay -showmode 1 -x 600 -y 200 -autoexit $f; done
	;;
    waves)
	for f in $(find $MDIR -type f | $XMENU); do ffplay -autoexit -f lavfi "amovie="$f",asplit [a][out1];[a]showwaves=size=500x60:mode=cline:colors=Green:r=50 [out0]"; done
        ;;
    vector)
        for f in $(find $MDIR -type f | $XMENU); do ffplay -autoexit -f lavfi "amovie="$f", asplit [a][out1]; [a] avectorscope=zoom=1.3:rc=2:gc=200:bc=10:rf=1:gf=8:bf=7 [out0]"; done
        ;;
    exit)
	exit 0
	;;
esac
