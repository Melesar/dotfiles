#!/bin/sh

PDFS=$(find $HOME/Documents -iname *.pdf)

fzf $(basename -a $PDFS)
 #| xargs -r -I {} basename "{}" | rofi -p "Select pdf file:" -dmenu | zathura -
