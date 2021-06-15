#!/bin/sh

cd && git --git-dir=$HOME/.dotfiles --work-tree=$HOME ls-files | fzf | xargs -r nvim

