#!/bin/env bash
# only show when idle is inhibited

scriptName=wayland-idle-inhibitor.py
scriptPid=$(pgrep -u "$USER" -nxf "^python(.*)$scriptName$")

if [ -z "$scriptPid" ]; then
   echo "{\"text\": \"\", \"alt\": \"\", \"tooltip\": \"\", \"class\": \"inactive\"}"
else
   echo "{\"text\": \"\", \"alt\": \"\", \"tooltip\": \"\", \"class\": \"active\"}"
fi
