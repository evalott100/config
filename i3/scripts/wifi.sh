INTERFACE="${BLOCK_INSTANCE:-wlp3s0}"
IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

if [[ $IP != "" ]]; then

[[ ! -d /sys/class/net/${INTERFACE}/wireless ]] ||
    [[ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]] && echo

QUALITY=$(grep $INTERFACE /proc/net/wireless | awk '{ print int($3 * 100 / 70) }')

SYMBOL=""
if (( $(cat /sys/class/net/enp0s25/carrier) == 0)); then
	SYMBOL=" "
	if (( $QUALITY == 100 )); then
	 printf  "$QUALITY/"
	elif (( $QUALITY < 10 )); then
	 printf "00$QUALITY/"
	else
	 printf "0$QUALITY/"
	fi
else
	SYMBOL=" "
fi

printf $IP
printf "$SYMBOL"

fi
