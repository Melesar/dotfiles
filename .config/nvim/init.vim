syntax on

filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')
	Plug 'preservim/NERDTree'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
	Plug 'tikhomirov/vim-glsl'
	Plug 'puremourning/vimspector'
	Plug 'itchyny/lightline.vim'
	Plug 'ap/vim-css-color'	
" Color scheme
	Plug 'tyrannicaltoucan/vim-deep-space'
	Plug 'joshdick/onedark.vim'
call plug#end()

set wildmenu
set wildmode=list:full
set wildignorecase
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
set splitright splitbelow

let g:lightline = { 'colorscheme': 'onedark' }
colorscheme onedark

set path=$PWD/**

"Coc configuration
source ~/.config/nvim/plugin-config/coc.vim

let mapleader=" "

"Resize buffers
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

"Buffer and window navigation
nnoremap <M-j> :bp<CR>
nnoremap <M-k> :bn<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"Tab switching
nnoremap <M-l> :tabnext<CR>
nnoremap <M-h> :tabprevious<CR>

"Open terminal in new tab
nnoremap <Leader>TT :tabe<CR>:terminal<CR>i

"Open terminal in a vertical split
nnoremap <Leader>TS :vs<CR>:terminal<CR>i

"NERDTree
nnoremap <A-1> :NERDTreeToggleVCS<CR>
nnoremap <A-F1> :NERDTreeFind<CR>

"Wrapping
vnoremap <Leader>w( <Esc>a)<Esc>`<i(<esc>`>
vnoremap <Leader>w" <Esc>a"<Esc>`<i"<esc>`>
vnoremap <Leader>w{ <Esc>a}<Esc>`<i{<esc>`>
vnoremap <Leader>w< <Esc>a><Esc>`<i<<esc>`>

"Make projects
nnoremap <Leader>mm :make!<CR>
nnoremap <Leader>mr :make! run<CR>

"Vim settings
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :w<CR>:source $MYVIMRC<CR>

"Disable search highlight
nnoremap <esc> :noh<CR>

"Remap ESC key
inoremap ii <ESC>
vnoremap ii <ESC>

function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

function! MakeSession()
    exe 'mks! .vim/session.vim'
endfunction

augroup vim_enter_exit
		autocmd!
		autocmd VimEnter * call SourceIfExists(".vim/vimrc.local")
		autocmd VimEnter * nested call SourceIfExists(".vim/session.vim")
augroup END

nnoremap <Leader>ms :call MakeSession()<CR>

"File types
augroup glsl
		autocmd!
		autocmd BufRead,BufNewFile *.vs,*fs set ft=glsl
augroup END

"Vimspector
let g:vimspector_enable_mappings='HUMAN'
