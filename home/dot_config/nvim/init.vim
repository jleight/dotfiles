" fix uppercase commands
command WQ wq
command Wq wq
command W w
command Q q

" fix cursor movement on wrapped lines
noremap j gj
noremap k gk

" hitting <CR> clears the search highlighting
nnoremap <CR> :nohlsearch<CR>/<BS><CR>

" move lines with ctrl+shift+j/k
nnoremap <C-S-k> ddkP
nnoremap <C-S-j> ddp
inoremap <C-S-j> <Esc>ddpi
inoremap <C-S-k> <Esc>ddkPi

" show whitespace
set list listchars=tab:>-,trail:~,extends:>,precedes:<

" load plugins
lua require('plugins')
