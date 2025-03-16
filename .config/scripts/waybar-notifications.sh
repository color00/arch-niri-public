#!/bin/env bash
# only show when on dnd

msgCount=$(dunstctl count waiting)
enabled=
disabled=󰂛

if dunstctl is-paused | grep -q "false"
then 
    echo "{\"text\": \"$enabled\", \"alt\": \"\", \"tooltip\": \"\", \"class\": \"unpaused\"}"
else 
  echo "{\"text\": \"$disabled\", \"alt\": \"\", \"tooltip\": \"$msgCount\", \"class\": \"paused\"}"
fi  
