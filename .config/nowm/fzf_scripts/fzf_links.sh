#!/bin/sh

. $HOME/.wmvar

INPUT=$(awk '{print $1}' ~/.bookmarks_cli | fzf --print-query | tail -n 1)      # input
URL=$(cat ~/.bookmarks_cli | grep ^$INPUT | cut -d ' ' -f 2)                    # batch

case $INPUT in
    tor)
	$CLI_TOR_BROWSER $URL                                                   # search with tor
	;;
    *)
	$CLI_BROWSER $URL                                                       # search url
	;;
esac
