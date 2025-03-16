#!/bin/env bash
# inhibit idle or kill idle inhibitor

scriptsDir=$HOME/.config/scripts
scriptName=wayland-idle-inhibitor.py
scriptPid=$(pgrep -u "$USER" -nxf "^python(.*)$scriptName$")

if [ -z "$scriptPid" ]; then
   python $scriptsDir/wayland-idle-inhibitor.py &
else
   pkill -15 -xf "^python(.*)$scriptName$"
fi

exit 0
