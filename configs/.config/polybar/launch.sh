#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/polybar1.log 
# polybar bar 2>&1 | tee -a /tmp/polybar1.log & disown

export TRAY_POS=left

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar bar 2>&1 | tee -a /tmp/polybar1.log & disown
polybar barS 2>&1 | tee -a /tmp/polybar2.log & disown


# if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     TRAY_POS=left MONITOR=$m polybar --reload barS &
#   done
# else
#   polybar --reload bar &
# fi
unset TRAY_POS
echo "Bars launched..."
