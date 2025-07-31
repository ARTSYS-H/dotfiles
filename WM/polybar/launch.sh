#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch multiples bar is possible
echo "---" | tee -a /tmp/polybarLugh.log /tmp/polybar2.log
polybar lugh 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
