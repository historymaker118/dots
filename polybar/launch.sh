#!/usr/bin/env bash

#Terminate already running instances
killall -q polybar

#Wait until processes have shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar example -r &

echo "Polybar launched..."
