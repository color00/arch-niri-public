#!/bin/env bash
# show the active tuned profile for laptop

active=$(tuned-adm active | awk '{print $4}')

case $active in
   laptop-battery-powersave)
        profileIcon="󰌪"
        profileDesc="power-saver"
        ;;
   throughput-performance)
        profileIcon="󰓅"
        profileDesc="performance"
        ;;
   balanced)
        profileIcon=""
        profileDesc="balanced"
        ;;
   *)
        profileIcon=""
        profileDesc="unknown"
        ;;
esac

echo "{\"text\": \"$profileIcon\", \"alt\": \"\", \"tooltip\": \"\", \"class\": \"$profileDesc\"}"
