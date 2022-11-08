#!/bin/sh

. $HOME/.wmvar

DATE=`date +%m-%d-%Y_%H:%M:%S`
WEBCAM="ffplay -f video4linux2 -i /dev/video0 -video_size 420x340 -fflags nobuffer"
RECORD_AUDIO="arecord -f cd -t wav capture-a_$DATE.wav"
RECORD_VIDEO="ffmpeg -f x11grab -s $(xdpyinfo | awk '/dimensions/ {print $2}') -r 25 -i :0.0+0,0 capture-v_$DATE.mp4"
RECORD_AUDIO_VIDEO="ffmpeg -f alsa -ac 2 -i default -f x11grab -i :0.0+0,0 -acodec ac3 -ab 128k -f matroska -s $(xdpyinfo | awk '/dimensions/ {print $2}') -vcodec libx264 -preset ultrafast -qp 16 capture-av_$DATE.mp4"

PROMPT=$(echo -e "webcam\naudio\nvideo\naudiovideo\nstop" | $XMENU)
case $PROMPT in
      webcam)
        $WEBCAM
        ;;
      audiovideo)
        $RECORD_AUDIO_VIDEO & echo $! > /tmp/capturemedia.pid
	;;
      video)
        $RECORD_VIDEO & echo $! > /tmp/capturemedia.pid
        ;;
     audio)
        $RECORD_AUDIO & echo $! > /tmp/capturemedia.pid
        ;;
     stop)
	 kill $(cat /tmp/capturemedia.pid)
	 ;;
esac

sleep 1 &&
if [ -n "$(pgrep ffmpeg)" ] || [ -n "$(pgrep arecord)" ]; then
    herbe "capture"

else
    herbe "capture stoped"

fi
