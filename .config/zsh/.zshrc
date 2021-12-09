setopt autocd menucomplete nomatch
unsetopt beep

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt share_history

autoload -Uz colors && colors
zle_highlight=('paste:none')

# completions
autoload -Uz compinit
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

source "$ZDOTDIR/zsh-functions"

export EDITOR=nvim

zsh_add_file "zsh-promt"
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-vim-mode"
zsh_add_file "zsh-keybindings"
zsh_add_file "zsh-zoxide"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"


os=$(uname)
case $os in
    Darwin)
		path+=('/opt/homebrew/bin') ;;
esac
