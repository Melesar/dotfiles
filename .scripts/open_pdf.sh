#!/bin/sh

[ -e ~/.local/share/pdfDirs ] || exit 1

args=$(awk '{s=s " --search-path "$1" "} END {print s}' ~/.local/share/pdfDirs)
fd -e pdf $args -d 1 | fzf | xargs -I _ -r zathura "_"
