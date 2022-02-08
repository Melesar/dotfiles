#!/bin/env bash

primary="eDP1"
secondary="HDMI-1-1"

# if [[ -z $(xrandr -q | grep "$secondary connected") ]]
# then
# 	exit
# fi

single="🖵    Single"
duplicate="    Duplicate"
double="🖵 🖵  Double"

selected_option=$(echo "$single
$double
$duplicate" | rofi -dmenu\
                  -i\
                  -p "Monitor setup"\
                  -config "~/.config/rofi/powermenu.rasi"\
                  -font "Cascadia Code 12"\
                  -width "30"\
                  -lines 3\
                  -line-margin 3\
                  -line-padding 10\
                  -scrollbar-width "0" )

xrandr --auto

# Do something based on selected option
if [ "$selected_option" == "$single" ]
then
	xrandr --output $primary --off --output $secondary --auto
elif [ "$selected_option" == "$duplicate" ]
then
	echo "Not implemented"
elif [ "$selected_option" == "$double" ]
then
	xrandr --output $primary --auto --output $secondary --left-of $primary
else
    echo "No match"
fi

