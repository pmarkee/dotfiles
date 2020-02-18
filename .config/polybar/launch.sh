#!/bin/sh

# Terminate already running instances
killall -q polybar
# and wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar main &

