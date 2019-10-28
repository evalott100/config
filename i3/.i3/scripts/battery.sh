BAT_N=$(acpi -b | wc -l)

for i in `seq 0 $(expr $BAT_N - 1)`; do
	BAT_N=$i

	if [[ $i -ge 1 ]]; then
		printf " -  "
	fi

	OUT=$(acpi -b | grep "Battery $BAT_N")

	BAT_S=$(echo $OUT | awk '{ print $3 }' | grep -o '[a-zA-Z]*')
	BAT_P=$(echo $OUT | awk '{ print $4 }' | grep -o '[0-9]*')
	BAT_R=$(echo $OUT | awk '{ print $5 }' | cut -d ':' -f 1,2)

	if [[ $BAT_S == "Full" ]]; then
		exit
	elif (( $BAT_P > 10 )); then
		printf "0"
	else
		printf "00"
	fi


	printf "$BAT_P"

	if [[ $BAT_S == "Charging" || $BAT_S == "Unknown" ]]; then
		BAT_S=""
	elif (( $BAT_P > 80 )); then
		BAT_S=""
	elif (( $BAT_P > 60 )); then
		BAT_S=""
	elif (( $BAT_P > 40 )); then
		BAT_S=""
	elif (( $BAT_P <= 40 )); then
		BAT_S=""
	fi

	if [[ $BAT_R != "" ]]; then
		printf "/$BAT_R"
	fi

	printf " $BAT_S"
done
