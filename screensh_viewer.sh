#!/bin/bash

# Screenshot directory
SCREENSHOT_DIR="$HOME/pictures"

# Find the last modified screenshot and open it
LATEST_SCREENSHOT=$(ls -t "$SCREENSHOT_DIR"/*.png | head -n 1)

# Open the screenshot with an image viewer (sxiv, feh, or any other)
[ -f "$LATEST_SCREENSHOT" ] && nsxiv "$LATEST_SCREENSHOT" &
