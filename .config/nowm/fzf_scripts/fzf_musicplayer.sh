#!/bin/sh

MDIR="$HOME/Música"

while true; do
INPUT=$(find $MDIR -type f | fzf --height=100% --layout=reverse --exact --print-query -m)
      if [ "$INPUT" = ":quit" ]; then
	  exit 0
	
      else
	  for f in $INPUT ; do ffplay -nodisp -autoexit "$f"; done
      fi
done
