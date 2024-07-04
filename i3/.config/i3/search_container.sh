#!/bin/bash

# Prompt the user for a search term
search_term=$(rofi -dmenu -p "Search for a container")

# Get the ID of the container matching the search term
container_id=$(i3-msg -t get_tree | jq -r '.. | select(.type? == "con" and .window_properties?.class? and .window_properties.class | contains("'$search_term'")) | .id' | head -n 1)

# Focus on the matching container
if [ -n "$container_id" ]; then
	i3-msg "[con_id=$container_id]" focus
else
	notify-send "No container found matching: $search_term"
fi
