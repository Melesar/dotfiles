function map (mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, {silent = true, noremap = true})
end

function nmap(shortcut, command)
	map('n', shortcut, command)
end

function vmap(shortcut, command)
	map('v', shortcut, command)
end

function imap(shortcut, command)
	map('i', shortcut, command)
end

function tmap(shortcut, command)
	map('t', shortcut, command)
end

-- Resizing buffers
nmap('<Up>', ':resize +2<CR>')
nmap('<Down>', ':resize -2<CR>')
nmap('<Left>', ':vertical resize -2<CR>')
nmap('<Right>', ':vertical resize +2<CR>')

-- Window naviagation
nmap('<M-k>', ':bn<CR>')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-h>', '<C-w>h')
nmap('<C-l>', '<C-w>l')

-- Tab switching
nmap('<M-h>', ':tabprevious<CR>')
nmap('<M-l>', ':tabnext<CR>')

-- Telescope
nmap('<Leader>ft', '<cmd>Telescope<cr>')
nmap('<Leader>ff', '<cmd>Telescope find_files<cr>')
nmap('<Leader>fb', '<cmd>Telescope buffers<cr>')
nmap('<Leader>fs', '<cmd>Telescope lsp_document_symbols<cr>')

-- Floatterm
nmap('<Leader>tt', '<cmd>ToggleTerm direction=float<cr>')
nmap('<Leader>tv', '<cmd>ToggleTerm direction=vertical size=120<cr>')
nmap('<Leader>th', '<cmd>ToggleTerm direction=horizontal<cr>')

-- Lazygit
nmap('<Leader>lg', '<cmd>LazyGit<CR>')

-- Terminal
tmap ('<esc><esc>', '<C-\\><C-n>')
