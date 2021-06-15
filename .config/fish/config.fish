#neofetch
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

function vimrc
	nvim ~/.config/nvim/init.vim
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
	~/.scripts/go_to_project.sh
end

function pi
    ssh pi@192.168.1.251
end

function picam_connect
	bash -c "printf '\xac\xdc' > /dev/udp/192.168.1.251/8085"
end

function picam_disconnect
	bash -c "printf '\xdc\xac' > /dev/udp/192.168.1.251/8085"
end

function lg
	lazygit
end

#==== Aliases =================================================================

alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

#==== Abbreviations ===========================================================

abbr -a serssh ssh melesar@87.99.0.192 
abbr -a cpg cd ~/Documents/Programs/
abbr -a cpj cd ~/Documents/Projects/
abbr -a pg ~/Documents/Programs/
abbr -a pj ~/Documents/Projects/
abbr -a diskspace ncdu
abbr -a fixsound pulseaudio --kill

switch (uname)
case Darwin
    set PATH $PATH /opt/homebrew/bin
end

