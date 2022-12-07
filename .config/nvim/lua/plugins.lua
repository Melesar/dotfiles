vim.cmd([[
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
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'

	Plug 'preservim/nerdtree'
	Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
	Plug 'tikhomirov/vim-glsl'
	Plug 'puremourning/vimspector'
	Plug 'itchyny/lightline.vim'
	Plug 'ap/vim-css-color'	
	Plug 'elkowar/yuck.vim'
	Plug 'ron-rs/ron.vim'
	Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}

" Color scheme
	Plug 'tyrannicaltoucan/vim-deep-space'
	Plug 'joshdick/onedark.vim'
	Plug 'romgrk/doom-one.vim'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'ayu-theme/ayu-vim'
call plug#end()
]])

-- vim.g.NERDTreeIgnore = {'\.meta$', '\~$'}
-- vim.g.lightline = {'colorscheme': 'onedark'}
vim.g.doom_one_terminal_colors = true
vim.g.ayucolor="dark"

