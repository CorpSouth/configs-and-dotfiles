#!/bin/sh

PDIR="$HOME/Descargas/ytdl"
TDIR="$HOME/Descargas/ytdl/trash"

while true; do
    input=$(find $PDIR -type f | grep -v ".part" | fzf --exact --print-query | tail -n 1)
    if [ "$input" = ":quit" ]; then
	exit 0

    else
	ffplay -nodisp -autoexit $input
	cp $input $TDIR
	rm $input
fi
done
   
