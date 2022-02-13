#!/bin/sh

bat=/sys/class/power_supply/BAT0
per="$(cat "$bat/capacity")"
# status="Charging"
status="$(cat "$bat/status")"

icon() {
	# echo "$status" && exit
	prefix=""

	[ "$status" = 'Not charging' ] && echo "" && exit

	if [ $status == "Charging" ]; then
		prefix=""
	fi

	if [ "$per" -gt "90" ]; then
	    icon=""
	elif [ "$per" -gt "75" ]; then
		icon=""
	elif [ "$per" -gt "50" ]; then
		icon=""
	elif [ "$per" -gt "25" ]; then
		icon=""
	elif [ "$per" -gt "10" ]; then
		icon=""
	else
		icon=""
	fi
	echo "$prefix $icon $per%"
}

# icon
echo $per

