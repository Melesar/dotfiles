#!/bin/sh

DIR=~/Documents/Projects

ls $DIR | rofi -dmenu -i | xargs -I '{}' alacritty --working-directory $DIR/'{}'
