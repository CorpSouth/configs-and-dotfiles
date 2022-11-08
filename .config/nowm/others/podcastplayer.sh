#!/bin/sh

. $HOME/.wmvar 

PDIR="$HOME/Descargas/ytdl"
TDIR="$HOME/Descargas/ytdl/trash"

INPUT=$(find $PDIR -type f | grep -v ".part" | $XMENU)
if [ "$INPUT" = ":quit" ]; then
    exit 0

else
    ffplay -showmode 1 -autoexit $INPUT
    cp $INPUT $TDIR
    rm $INPUT
fi

   
