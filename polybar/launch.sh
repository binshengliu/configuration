#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $USER -x polybar >/dev/null; do sleep 1; done

# Stole from here:
# https://github.com/jaagr/polybar/issues/763#issuecomment-331604987
if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
	export MONITOR=$m
	MONITOR=$m polybar --reload i3wmthemer_bar &
	unset MONITOR
    done
else
    polybar --reload i3wmthemer_bar
fi

echo "Bars launched..."
