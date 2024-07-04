#!/bin/bash

state=$(xrandr | grep '^DP-1' | awk '{print $2}')

# xrandr to place the external monitor
if [[ "$state" == "connected" ]]; then
	xrandr --output DP-1 --above eDP-1
fi
