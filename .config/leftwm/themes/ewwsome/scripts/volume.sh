#!/bin/sh

pactl get-sink-volume @DEFAULT_SINK@ | cut -d, -f 1 | head -n 1 | cut -d: -f 3 | cut -d/ -f 2 | tr -d ' %'
