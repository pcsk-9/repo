#!/bin/bash

# Get the current time
CURRENT_TIME=$(date +"%H:%M")

# Get the battery status
BATTERY_DIR="/sys/class/power_supply/BAT0"
if [ -d "$BATTERY_DIR" ]; then
    PERCENTAGE=$(cat "$BATTERY_DIR/capacity")
    STATE=$(cat "$BATTERY_DIR/status")
    BATTERY_INFO="${PERCENTAGE}% ${STATE}"
else
    BATTERY_INFO="No battery found"
fi


# Send the notification using dunst
dunstify "Time: $CURRENT_TIME Battery: $BATTERY_INFO"

