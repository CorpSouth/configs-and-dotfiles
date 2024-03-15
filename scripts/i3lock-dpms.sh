#!/bin/sh

revert() {
   xset dpms 0 0 0
}
trap revert HUP INT TERM
xset +dpms dpms 5 5 5
i3lock -i "$HOME/Pictures/Wallpapers/SiteOrigin/Mint-Y/Shattered_Bumpmap_Blue.png" -n -t -u
revert
