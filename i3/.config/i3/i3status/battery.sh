#!/bin/bash

# Fetch battery information using upower
battery_info=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0)

# Extract the battery percentage
battery_percentage=$(echo "$battery_info" | grep -E "percentage" | awk '{print $2}')

# Extract the state (charging, discharging, etc.)
battery_state=$(echo "$battery_info" | grep -E "state" | awk '{print $2}')

# Output in the format expected by i3status
echo "$battery_state $battery_percentage"
