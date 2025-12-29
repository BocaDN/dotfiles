#!/bin/bash

# Config
DAY_TEMP=6500
NIGHT_TEMP=4500
STATE_FILE="/tmp/redshift_mode"

# Backend and location (no geoclue used)
REDSHIFT_ARGS="-m randr"

# Check current mode
if [[ -f "$STATE_FILE" ]]; then
    CURRENT_MODE=$(cat "$STATE_FILE")
else
    CURRENT_MODE="day"
fi

# Toggle
if [[ "$CURRENT_MODE" == "day" ]]; then
    echo "night" > "$STATE_FILE"
    redshift $REDSHIFT_ARGS -P -O $NIGHT_TEMP > /dev/null 2>&1
    echo "Switched to night mode ($NIGHT_TEMP K)"
else
    echo "day" > "$STATE_FILE"
    redshift $REDSHIFT_ARGS -P -O $DAY_TEMP > /dev/null 2>&1
    echo "Switched to day mode ($DAY_TEMP K)"
fi

exit 0
