#!/bin/sh

MONITOR_1=$(xrandr --listmonitors | cut -d " " -f6 | grep -v "^$" | sed -n "1p")
MONITOR_2=$(xrandr --listmonitors | cut -d " " -f6 | grep -v "^$" | sed -n "2p")
MONITOR_3=$(xrandr --listmonitors | cut -d " " -f6 | grep -v "^$" | sed -n "3p")

echo "MONITOR_1=${MONITOR_1}"
echo "MONITOR_2=${MONITOR_2}"
echo "MONITOR_2=${MONITOR_3}"

i3-msg "workspace 1; move workspace to output $MONITOR_1"
i3-msg "workspace 2; move workspace to output $MONITOR_1"
i3-msg "workspace 3; move workspace to output $MONITOR_1"

i3-msg "workspace 4; move workspace to output $MONITOR_2"
i3-msg "workspace 5; move workspace to output $MONITOR_2"
i3-msg "workspace 6; move workspace to output $MONITOR_2"
i3-msg "workspace 7; move workspace to output $MONITOR_2"

i3-msg "workspace 8; move workspace to output $MONITOR_3"
i3-msg "workspace 9; move workspace to output $MONITOR_3"
i3-msg "workspace 10; move workspace to output $MONITOR_3"

