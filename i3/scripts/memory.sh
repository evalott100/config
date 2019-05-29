
mem=$(printf "%.0f" free | grep Mem | awk '{print $3/$2 * 100.0}')



if (( $mem == 100 )); then
	printf ""
elif (( $mem > 10 )); then
	printf "0"
else
	printf "00"
fi

printf "%0.f" $mem
