setopt autocd menucomplete nomatch
unsetopt beep

autoload -Uz colors && colors

source "$ZDOTDIR/zsh-functions"

bindkey -v
export KEYTIMEOUT=1

zsh_add_file "zsh-promt"
zsh_add_file "zsh-aliases"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
