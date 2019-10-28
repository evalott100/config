#!/bin/bash

W=$(xdotool getactivewindow)
WPID=$(xdotool getactivewindow getwindowpid)
S1=$(xprop -id ${W} | awk '/WM_CLASS/{print $4}')

if [ "$S1" == '"UXTerm"' ]; then
    SH_PID=$(echo $(ps --ppid ${WPID} -o pid=) | cut -d' ' -f1)
    DIR=$(readlink -e /proc/${SH_PID}/cwd/ | sed 's/ /\\ /g')
    thunar ${DIR}
fi
