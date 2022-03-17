#!/bin/sh

DIR=~/.password-store
[ ! -d $DIR ] && exit;

fd . --base-directory $DIR -t file | sed 's/.gpg//' | rofi -dmenu -i -p "Choose password" | xargs pass -c
