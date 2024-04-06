#!/bin/sh

revert() {
   xset dpms 0 0 0
}
trap revert HUP INT TERM
i3-msg mode default
xset +dpms dpms 5 5 5
i3lock -c 000000 -u
revert
