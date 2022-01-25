set wildmenu
set wrap
set number relativenumber
set background=dark
set termguicolors
set autoindent
set smartindent
set hls is
set cursorline
set shiftwidth=0
set softtabstop=2
set tabstop=4
set scrolloff=5
set splitright splitbelow
set noswapfile

set completeopt=menuone,noinsert,noselect

let g:lightline = { 'colorscheme': 'onedark' }
let g:doom_one_terminal_colors = v:true
colorscheme duskfox
"colorscheme doom-one

set path=$PWD/**

let mapleader=" "