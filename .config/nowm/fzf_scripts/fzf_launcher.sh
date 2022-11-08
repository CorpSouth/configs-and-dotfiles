#!/bin/sh

cmd=$(ls /usr/share/applications | fzf)
gtk-launch $cmd > /dev/null
