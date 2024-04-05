#!/bin/sh

WALLPAPER="$HOME/Pictures/Wallpapers/SiteOrigin/Mint-Y/Brilliant_Bumpmap_Aqua.png"

revert() {
   xset dpms 0 0 0
}
trap revert HUP INT TERM
i3-msg mode default
xset +dpms dpms 5 5 5
i3lock -i "$WALLPAPER" -n -t -u
revert
