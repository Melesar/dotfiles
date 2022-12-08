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

function xmap(shortcut, command)
	map('x', shortcut, command)
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
nmap('<Leader>fg', '<cmd>Telescope live_grep<cr>')

-- Floatterm
nmap('<Leader>tt', '<cmd>ToggleTerm direction=float<cr>')
nmap('<Leader>tv', '<cmd>ToggleTerm direction=vertical size=120<cr>')
nmap('<Leader>th', '<cmd>ToggleTerm direction=horizontal<cr>')

-- Lazygit
nmap('<Leader>lg', '<cmd>LazyGit<CR>')

-- Terminal
tmap ('<esc><esc>', '<C-\\><C-n>')

-- LSP
nmap('gd',    '<cmd>lua vim.lsp.buf.definition()<CR>')
nmap('gi',    '<cmd>lua vim.lsp.buf.implementation()<CR>')
nmap('gr',    '<cmd>lua vim.lsp.buf.references()<CR>')
nmap('gD',    '<cmd>lua vim.lsp.buf.declaration()<CR>')
nmap('ge',    '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>')
nmap('K',    '<cmd>lua vim.lsp.buf.hover()<CR>')
nmap('<c-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nmap('<leader>f',    '<cmd>lua vim.lsp.buf.formatting()<CR>')
nmap('<leader>rn',    '<cmd>lua vim.lsp.buf.rename()<CR>')

nmap('<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
xmap('<leader>a', '<cmd>lua vim.lsp.buf.range_code_action()<CR>')

-- Debugging with DAP
nmap('<leader>dd', ':lua require("dap").continue()<CR>')
nmap('<leader>de', ':lua require("dap").terminate()<CR>')
nmap('<leader>dj', ':lua require"dap".step_over()<CR>')
nmap('<leader>dl', ':lua require"dap".step_into()<CR>')
nmap('<leader>dh', ':lua require"dap".step_out()<CR>')
nmap('<leader>db', ':lua require"dap".toggle_breakpoint()<CR>')
nmap('<leader>dB', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
nmap('<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
nmap('<leader>di', ':lua require"dap.ui.widgets".hover()<CR>')
nmap('<leader>ds', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>')
