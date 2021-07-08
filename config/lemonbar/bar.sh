#!/usr/bin/env bash
#
# Echo a lemon scented bar.
#
# Copyright (c) 2021 Henri Cattoire. Licensed under WTFPL license.
#

PANEL_FIFO=/tmp/bar_fifo
SEP="|"
# COLOURS.
BACKGROUND="#292d3e"

[ -e "${PANEL_FIFO}" ] && rm "${PANEL_FIFO}"
mkfifo "${PANEL_FIFO}"

function clock() {
  while true; do
    echo "CLOCK $(date "+%d %b. %H:%M:%S")"
    sleep 1
  done
}

clock > "${PANEL_FIFO}" &

function battery() {
  local capacity charging
  while true; do
    capacity=`cat /sys/class/power_supply/BAT0/capacity`
    charging=`cat /sys/class/power_supply/BAT0/status`
    [[ ${capacity} -eq 10 ]] && [[ ${charging} != "Charging" ]] && notify-send -u "critical" "Low Battery" "10% of battery remaining"
    [[ ${charging} == "Charging" ]] && echo "BATTERY + ${capacity}%%" || echo "BATTERY - ${capacity}%%"
    sleep 5
  done
}

battery > "${PANEL_FIFO}" &

function network() {
  local ethernet wifi
  while true; do
    ethernet=`cat /sys/class/net/ens2/operstate`
    wifi=`cat /sys/class/net/wls3/operstate`
    [[ ${ethernet} == "up" ]] && echo "NETWORK eth" && break
    [[ ${wifi} == "up" ]] && echo "NETWORK wls" && break
    [[ ${wifi} != "up" ]] && [[ ${ethernet} != "up" ]] && echo "NETWORK down"
    sleep 5
  done
}

network > "${PANEL_FIFO}" &

while read -r line; do
    case $line in
        CLOCK*)
            clock="${line#CLOCK }"
            ;;
        BATTERY*)
            battery="${line#BATTERY }"
            ;;
        NETWORK*)
            network="${line#NETWORK }"
            ;;
    esac
    printf "%s\n" "%{l}%{B#00000000}%{B-}%{r}%{B$BACKGROUND} ${network} ${SEP} ${battery} ${SEP} ${clock} %{B-}"
done < "${PANEL_FIFO}" | lemonbar -p -f "courier"-11 | sh
