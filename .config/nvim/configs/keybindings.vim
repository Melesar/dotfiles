"Floatterm
nnoremap <leader>tt :FloatermToggle<CR>
nnoremap <leader>tn :FloatermNew<CR>
nnoremap <leader>tj :FloatermNext<CR>
nnoremap <leader>tk :FloatermPrev<CR>

"NERDTree
nnoremap <Leader>ntt :NERDTreeToggleVCS<CR>
nnoremap <Leader>ntf :NERDTreeFind<CR>

"fzf
nnoremap <expr> <Leader>ff (len(system('git rev-parse')) ? ':Files' : ':GFiles --exclude-standard --others --cached')."\<CR>"
nnoremap <Leader>fb :Buffers<CR>

"Lazygit
nnoremap <Leader>lg :LazyGit<CR>

"LSP
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> ge    <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>f    <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <leader>rn    <cmd>lua vim.lsp.buf.rename()<CR>

nnoremap <silent> <leader>a <cmd>lua vim.lsp.buf.code_action()<CR>
xmap <silent> <leader>a <cmd>lua vim.lsp.buf.range_code_action()<CR>

"Debugging with DAP
nnoremap <silent> <leader>dd :lua require('dap').continue()<CR>
nnoremap <silent> <leader>de :lua require('dap').terminate()<CR>
nnoremap <silent> <leader>dj :lua require'dap'.step_over()<CR>
nnoremap <silent> <leader>dl :lua require'dap'.step_into()<CR>
nnoremap <silent> <leader>dh :lua require'dap'.step_out()<CR>
nnoremap <silent> <leader>db :lua require'dap'.toggle_breakpoint()<CR>
nnoremap <silent> <leader>dB :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <silent> <leader>dr :lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l
nnoremap <silent> <leader>di :lua require"dap.ui.widgets".hover()<CR>
nnoremap <silent> <leader>ds :lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>

