vim.cmd("filetype plugin indent on")

vim.g.mapleader = " "

vim.o.wildmenu = true
vim.o.wrap = true
vim.o.completeopt = "menuone,noinsert,noselect"

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"

vim.o.background = "dark"
vim.o.termguicolors = true

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.hls = true
vim.o.ls = true
vim.o.cursorline = true
vim.o.shiftwidth = 0
vim.o.softtabstop = 2
vim.o.tabstop = 4
vim.o.scrolloff = 5

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.noswapfile = true

vim.o.path = "$PWD/**"

vim.cmd("colorscheme duskfox")
