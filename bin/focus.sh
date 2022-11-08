#!/bin/sh

case $1 in
    next) wid=$(lsw|grep -v $(pfw)|sed '1 p;d') ;;
    prev) wid=$(lsw|grep -v $(pfw)|sed '$ p;d') ;;
    last) wid=$(lsw|sed '$ p;d');;
    0x*) wattr $1 && wid=$1 ;;
    *) usage ;;
esac

# focus and stack
chwso -r $wid
wtf $wid

# borders
chwb -s $BW -c $INACTIVE $(lsw | grep -v $(pfw))
chwb -s $BW -c $ACTIVE $(pfw)
