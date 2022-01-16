#!/bin/sh

MAIN="eDP1"
SECONDARY="HDMI-1-1"

if [[ -z $(xrandr -q | grep "$SECONDARY connected") ]]
then
	exit
fi

xrandr --output $MAIN --auto --output $SECONDARY --right-of $MAIN
