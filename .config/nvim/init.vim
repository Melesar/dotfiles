syntax on

filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'preservim/NERDTree'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

" C#
	Plug 'dense-analysis/ale'
	Plug 'OmniSharp/omnisharp-vim'

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

nnoremap <Leader>bda :bufdo bd<CR>

"Tab switching
nnoremap <M-h> :tabprevious<CR>
nnoremap <M-l> :tabnext<CR>

"Open terminal in new tab
nnoremap <Leader>TT :tabe<CR>:terminal<CR>i

"Open terminal in a vertical split
nnoremap <Leader>TS :vs<CR>:terminal<CR>i

"NERDTree
nnoremap <Leader>ntt :NERDTreeToggleVCS<CR>
nnoremap <Leader>ntf :NERDTreeFind<CR>

"fzf
nnoremap <expr> <Leader>ff (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<CR>"
nnoremap <Leader>fb :Buffers<CR>

"vimspector
nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dr :call vimspector#Restart()<CR>
nnoremap <Leader>d<space> :call vimspector#Continue()<CR>
nnoremap <Leader>dj :call vimspector#StepOver()<CR>
nnoremap <Leader>dl :call vimspector#StepInto()<CR>
nnoremap <Leader>dk :call vimspector#StepOut()<CR>
nnoremap <Leader>db :call vimspector#ToggleBreakpoint()<CR>

"Lazygit
nnoremap <Leader>lg :LazyGit<CR>

"C#
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:OmniSharp_selector_ui = 'fzf'
"let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_selector_findusages = 'fzf'

augroup omnisharp_commands
  autocmd!
  autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
  autocmd FileType cs nmap <silent> <buffer> pd <Plug>(omnisharp_preview_definition)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fu <Plug>(omnisharp_find_usages)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fi <Plug>(omnisharp_find_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>pi <Plug>(omnisharp_preview_implementations)
  autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
  autocmd FileType cs nmap <silent> <buffer> <Leader>doc <Plug>(omnisharp_documentation)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fs <Plug>(omnisharp_find_symbol)
  autocmd FileType cs nmap <silent> <buffer> <Leader>fx <Plug>(omnisharp_fix_usings)
  autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
  autocmd FileType cs nmap <silent> <buffer> <Leader>rm <Plug>(omnisharp_rename) 
  autocmd FileType cs nmap <silent> <buffer> <Leader>ca <Plug>(omnisharp_code_actions)
  autocmd FileType cs vmap <silent> <buffer> <Leader>ca <Plug>(omnisharp_code_actions)
  autocmd FileType cs xmap <silent> <buffer> <Leader>ca <Plug>(omnisharp_code_actions)
  autocmd FileType cs nmap <silent> <buffer> <Leader>omrs <Plug>(omnisharp_restart_server)
augroup end

"Wrapping
vnoremap <Leader>w( <Esc>a)<Esc>`<i(<esc>`>
vnoremap <Leader>w" <Esc>a"<Esc>`<i"<esc>`>
vnoremap <Leader>w{ <Esc>a}<Esc>`<i{<esc>`>
vnoremap <Leader>w< <Esc>a><Esc>`<i<<esc>`>

"Create a file in the directory of the current file
nnoremap <Leader>mf :e %:p:h

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
