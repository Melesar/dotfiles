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
