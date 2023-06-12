#!/bin/sh

FILE=$(zenity --height="500" --width="1000" --file-selection --title="Select a File")

case $? in
            0)
               echo "\"$FILE\" selected."               ;;
            1)
               echo "No file selected."                 ;;
           -1)
               echo "An unexpected error has occurred." ;;
esac
