# Launches my polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload corey &
  done
else
  polybar --reload corey &
fi
