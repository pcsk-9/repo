#!/bin/bash

LAPTOP_SCREEN="LVDS-1"
HDMI_SCREEN="HDMI-2"
WALLPAPER_SCRIPT="$HOME/.fehbg"

while true; do
    HDMI_CONNECTED=$(xrandr | grep "$HDMI_SCREEN connected")

    if [ -n "$HDMI_CONNECTED" ]; then
        # Turn off the laptop screen and update the wallpaper
        xrandr --output $LAPTOP_SCREEN --off
        xrandr --output $HDMI_SCREEN --auto
        $WALLPAPER_SCRIPT  # Call your wallpaper script
    else
        # Turn on the laptop screen and update the wallpaper
        xrandr --output $LAPTOP_SCREEN --auto
        $WALLPAPER_SCRIPT  # Call your wallpaper script
    fi

    sleep 5
done

