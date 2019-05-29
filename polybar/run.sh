$(killall polybar)

for m in $(xrandr --query | grep " connected" | cut -d" " -f1 | sed '/VGA1/d'); do
    MONITOR=$m polybar --reload bar1 -c ~/.config/polybar/config &
done

MONITOR=$m polybar --reload bar2 -c ~/.config/polybar/config &
