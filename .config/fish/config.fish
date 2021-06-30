set fish_greeting ""

#==== FUNCTIONS ===============================================================

function apts
	apt search --names-only $argv
end

function apti
	sudo apt install $argv
end

function passgen
	pass generate -nc $argv
end

function vim
	nvim $argv
end

function passupd
	pass git pull orign 
	pass git push orign master
end

function findg
    sudo find / -iname $argv 2>/dev/null
end

function findl
    find ~ -iname $argv 
end

function gopro
	cd (fd . ~/Documents/Projects -t d -d 1 | fzf)
end

function edot
	~/.scripts/edit_dotfile.sh
end

#==== Aliases =================================================================

alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias ls="exa"
alias ll="exa -l"
alias la="exa -la"
alias lg="lazygit"

#==== Abbreviations ===========================================================

abbr -a diskspace ncdu
abbr -a fixsound pulseaudio --kill

switch (uname)
case Darwin
    set PATH $PATH /opt/homebrew/bin
end

