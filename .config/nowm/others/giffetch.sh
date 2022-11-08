#!/bin/bash

# giffetch by @root.sti
# some info parts are based on "Teal Dulcet - Linux-System-Information" script
# dependences: chafa

GIF_PATH="/home/marulo/Imágenes/gif/void.gif"

if [[ $# -ne 0 ]]; then
	echo "Usage: $0" >&2
	exit 1
fi

# Check if on Linux
if ! echo "$OSTYPE" | grep -iq "linux"; then
	echo "Error: This script must be run on Linux." >&2
	exit 1
fi

# toiec <KiB>
toiec() {
	echo "$(printf "%'d" $(( $1 / 1024 ))) MiB$([[ $1 -ge 1048576 ]] && echo " ($(numfmt --from=iec --to=iec-i "${1}K")B)")"
}

# tosi <KiB>
tosi() {
	echo "$(printf "%'d" $(( (($1 * 1024) / 1000) / 1000 ))) MB$([[ $1 -ge 1000000 ]] && echo " ($(numfmt --from=iec --to=si "${1}K")B)")"
}

. /etc/os-release

echo -e "\n\033[36m · Linux Distribution: \033[0m\t\t \033[37m ${PRETTY_NAME:-$ID-$VERSION_ID} \033[0m"

KERNEL=$(</proc/sys/kernel/osrelease) # uname -r
echo -e "\033[36m · Linux Kernel: \033[0m\t\t \033[37m $KERNEL \033[0m"

mapfile -t CPU < <(sed -n 's/^model name[[:blank:]]*: *//p' /proc/cpuinfo | uniq)
if [[ -z "$CPU" ]]; then
	mapfile -t CPU < <(lscpu | grep -i '^model name' | sed -n 's/^.\+:[[:blank:]]*//p' | uniq)
fi
if [[ -n "$CPU" ]]; then
	echo -e "\033[36m · Processor (CPU): \033[0m\t\t \033[37m ${CPU[0]}$([[ ${#CPU[*]} -gt 1 ]] && printf '\n\t\t\t\t%s' "${CPU[@]:1}") \033[0m"
fi

CPU_THREADS=$(nproc --all) # $(lscpu | grep -i '^cpu(s)' | sed -n 's/^.\+:[[:blank:]]*//p')
CPU_CORES=$(lscpu -ap | grep -v '^#' | awk -F, '{ print $2 }' | sort -nu | wc -l)
CPU_SOCKETS=$(lscpu | grep -i '^socket(s)' | sed -n 's/^.\+:[[:blank:]]*//p') # $(lscpu -ap | grep -v '^#' | awk -F, '{ print $3 }' | sort -nu | wc -l)
echo -e "\033[36m · CPU Sockets/Cores/Threads: \033[0m\t \033[37m $CPU_SOCKETS/$CPU_CORES/$CPU_THREADS \033[0m"

ARCHITECTURE=$(getconf LONG_BIT)
echo -e "\033[36m · Architecture: \033[0m\t\t \033[37m $HOSTTYPE (${ARCHITECTURE}-bit) \033[0m"

MEMINFO=$(</proc/meminfo)
TOTAL_PHYSICAL_MEM=$(echo "$MEMINFO" | awk '/^MemTotal:/ {print $2}')
echo -e "\033[36m · Total memory (RAM): \033[0m\t\t \033[37m $(toiec "$TOTAL_PHYSICAL_MEM") ($(tosi "$TOTAL_PHYSICAL_MEM")) \033[0m"

TOTAL_SWAP=$(echo "$MEMINFO" | awk '/^SwapTotal:/ {print $2}')
echo -e "\033[36m · Total swap space: \033[0m\t\t \033[37m $(toiec "$TOTAL_SWAP") ($(tosi "$TOTAL_SWAP")) \033[0m"

for lspci in lspci /sbin/lspci; do
	if command -v $lspci >/dev/null; then
		mapfile -t GPU < <($lspci 2>/dev/null | grep -i 'vga\|3d\|2d' | sed -n 's/^.*: //p')
		break
	fi
done
if [[ -n "$GPU" ]]; then
	echo -e "\033[36m · Graphics Processor (GPU): \033[0m\t \033[37m ${GPU[0]}$([[ ${#GPU[*]} -gt 1 ]] && printf '\n\t\t\t\t%s' "${GPU[@]:1}") \033[0m"
fi

HOSTNAME_FQDN=$(hostname -f) # hostname -A
echo -e "\033[36m · Hostname: \033[0m\t\t\t \033[37m $HOSTNAME_FQDN \033[0m"

echo -e "\033[36m · Bash Version: \033[0m\t\t \033[37m $BASH_VERSION \033[0m"

if [[ -c /dev/tty ]]; then
	stty raw min 0 time 10 </dev/tty
	read -p $'\x05' -rs -t 1 TERMINAL </dev/tty || true
	stty cooked </dev/tty
fi
echo -e "\r\033[36m · Terminal: \033[0m\t\t\t \033[37m $TERM${TERMINAL:+ ($TERMINAL)} \033[0m"

chafa -s 46 $GIF_PATH
