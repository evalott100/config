VOLUME=$(pamixer --get-volume)
MUTE=$(pamixer --get-mute)

if $MUTE; then
	MUTE=""
elif (( $VOLUME > 50 )); then
	MUTE=""
elif (( $VOLUME == 0 )); then
	MUTE=""
else
	MUTE=""
fi


if (($VOLUME >= 100)); then
	echo "$VOLUME $MUTE"
elif (($VOLUME < 10)); then
	echo 00"$VOLUME $MUTE"
else 
	echo 0"$VOLUME $MUTE"
fi
