#!/bin/bash

# xdotool mousedown 1

STATE_FILE="/tmp/mouse_click_hold_state"

if [ ! -f "$STATE_FILE" ]; then
  echo "down" > "$STATE_FILE"
  xdotool mousedown 1
else
  CURRENT=$(cat "$STATE_FILE")
  if [ "$CURRENT" = "down" ]; then
    xdotool mouseup 1
    rm "$STATE_FILE"
  else
    echo "down" > "$STATE_FILE"
    xdotool mousedown 1
  fi
fi
