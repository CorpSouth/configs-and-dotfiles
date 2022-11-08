#!/bin/sh

## set modules ##
net() {
    lan_state="$(cat /sys/class/net/eth0//operstate)"
    wlan_state="$(cat /sys/class/net/w*/operstate)"
    ipaddr="$(ip addr show $INTERFACE | grep wlx0022438c5aa5 | grep inet | cut -c 10-20)"  

    echo "wired ($lan_state) / wifi ($wlan_state)"
}

mail() {
    COUNT_1=$(ls ~/.mail/cock/INBOX/new | wc -l)
    COUNT_2=$(ls ~/.mail/disroot/INBOX/new | wc -l)

    echo "root $COUNT_1 / toor $COUNT_2"
}

vol() {
    echo "$(amixer sget Master | awk -F "[][]" '/Playback/ {print $2}' | tr -d '\n' | sed 's/%/%%/g')"
}

bat() {
    read -r STATUS < /sys/class/power_supply/BAT0/status
    read -r LEVEL < /sys/class/power_supply/BAT0/capacity 

    if [ "$STATUS" = "Charging" ] || [ "$STATUS" = "Full" ]; then
        echo "$LEVEL%% (charge)"

    else
        echo "$LEVEL%% (discharge)"
    fi
}

mem() {
    memtotal=$(awk '/MemTotal/ {print $2/1024}' /proc/meminfo)
    memavailable=$(awk '/MemAvailable/ {print $2/1024}' /proc/meminfo)
    swaptotal=$(awk '/SwapTotal/ {print $2/1024}' /proc/meminfo)
    swapfree=$(awk '/SwapFree/ {print $2/1024}' /proc/meminfo)
    ram=$(echo "(($memtotal-$memavailable)*100)/$memtotal" | bc)
    swap=$(echo "(($swaptotal-$swapfree)*100)/$swaptotal" | bc)

    echo "ram $ram%% / swap $swap%%"
}

ytp() {
    podcast=$(ls ~/Descargas/ytdl | grep -v trash | wc -l)
    trashed=$(ls ~/Descargas/ytdl/trash | wc -l)
    echo "new $podcast / trash $trashed"
}

## output ##
while true; do
    clear 
    printf " 
\033[36m + battery : \033[0m .......\033[37m $(bat) \033[0m
\033[36m + network : \033[0m .......\033[37m $(net) \033[0m
\033[36m + memory : \033[0m ........\033[37m $(mem) \033[0m
\033[36m + audio : \033[0m .........\033[37m $(vol) \033[0m
\033[36m + mails : \033[0m .........\033[37m $(mail) \033[0m
\033[36m + podcast : \033[0m .......\033[37m $(ytp) \033[0m"
    sleep 4
done
    
