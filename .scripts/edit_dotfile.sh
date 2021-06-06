#!/bin/sh

cd && git --git-dir=$HOME/.dotfiles --work-tree=$HOME ls-files | rofi -p "Select a file:" -dmenu | xargs -r $TERM -e $EDITOR

