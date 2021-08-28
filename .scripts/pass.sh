#!/bin/sh

DIR=~/.password-store
[ ! -d $DIR ] && exit;

fd . --base-directory $DIR -t file | sed 's/.gpg//' | rofi -dmenu | xargs pass -c
