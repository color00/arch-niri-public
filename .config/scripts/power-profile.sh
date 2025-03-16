#!/bin/env bash
# set laptop power profiles from tuned
# define the power profiles for your machine in the case statement below

selected=$(echo -e 'Balanced\nPowersave\nPerformance' | fuzzel --dmenu \
  --prompt "Select a power profile:" | awk '{print $1}')

charge=$(cat /sys/class/power_supply/BATT/capacity)

# Exit if none selected.
[ -z "$selected" ] && exit

case $selected in
   Powersave)
        powerProfile=laptop-battery-powersave
        ;;
   Performance)
        powerProfile=throughput-performance
        ;;
   Balanced)
        powerProfile=balanced
        ;;
esac

active=$(tuned-adm active | awk '{print $4}')

if [[ "$active" != "$powerProfile" ]]; then
    tuned-adm profile $powerProfile
fi

notify-send "Power profile set to \"$selected.\""
