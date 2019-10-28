$(killall redshift)
$(killall compton)
num="$(xrandr --query | grep '\bconnected\b' | wc -l)"

# Docked in Dundee
if (( $num == 2 )); then
	autorandr --load docked
	xbacklight -set 100
	retval=$?
	if [ $retval -ne 1 ]; then
		mon2="eDP-1"
		mon1="DP-1"
	fi

# Not docked
else
	autorandr --load laptop
	xbacklight -set 40
	retval=$?
	if [ $retval -ne 1 ]; then
		mon1="eDP-1"
		mon2="eDP-1"
	fi
fi

$(i3-msg "workspace 1:1, move workspace to output $mon1")
$(i3-msg "workspace 2:2, move workspace to output $mon1")
$(i3-msg "workspace 3:3, move workspace to output $mon1")
$(i3-msg "workspace 4:4, move workspace to output $mon1")
$(i3-msg "workspace 5:5, move workspace to output $mon1")
$(i3-msg "workspace 6:6, move workspace to output $mon1")
$(i3-msg "workspace 7:7, move workspace to output $mon1")
$(i3-msg "workspace 8:8, move workspace to output $mon2")
$(i3-msg "workspace 9:9, move workspace to output $mon2")
$(i3-msg "workspace 10:0, move workspace to output $mon2")
$(~/.config/polybar/run.sh)
$(nitrogen --restore)
$(compton -b)
#$(redshift -l 56.51:-3.25)
