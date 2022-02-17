syntax on

filetype plugin indent on

call plug#begin('~/.config/nvim/plugged')
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'quangnguyen30192/cmp-nvim-ultisnips'

	Plug 'mfussenegger/nvim-dap'
    Plug 'theHamsta/nvim-dap-virtual-text'

	Plug 'ray-x/lsp_signature.nvim'

	Plug 'SirVer/ultisnips'
	Plug 'voldikss/vim-floaterm'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'

	Plug 'preservim/nerdtree'
	Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
	Plug 'tikhomirov/vim-glsl'
	Plug 'puremourning/vimspector'
	Plug 'itchyny/lightline.vim'
	Plug 'ap/vim-css-color'	
	Plug 'elkowar/yuck.vim'
	Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}

" Color scheme
	Plug 'tyrannicaltoucan/vim-deep-space'
	Plug 'joshdick/onedark.vim'
	Plug 'romgrk/doom-one.vim'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'ayu-theme/ayu-vim'
call plug#end()

luafile ~/.config/nvim/lsp_config.lua
luafile ~/.config/nvim/dap_config.lua
luafile ~/.config/nvim/telescope.lua

source ~/.config/nvim/configs/navigation.vim
source ~/.config/nvim/configs/opts.vim
source ~/.config/nvim/configs/keybindings.vim

"Vim settings
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>
nnoremap <Leader>sv :w<CR>:source $MYVIMRC<CR>

"Disable search highlight
nnoremap <esc> :noh<CR>

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
