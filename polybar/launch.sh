#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Stole from here:
# https://github.com/jaagr/polybar/issues/763#issuecomment-331604987
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload i3wmthemer_bar &
  done
else
  polybar --reload i3wmthemer_bar &
fi

polybar i3wmthemer_bar &
# polybar bar2 &

echo "Bars launched..."
