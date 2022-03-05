nnoremap <C-c> <Esc>
nnoremap <leader>q :q!
nnoremap <leader>w :w<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" add j and k to the jump list
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'gj'
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'gk'

" insert lines without insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" close all buffers except current
nnoremap <silent> <leader>bo :w <bar> %bd <bar> e# <bar> bd# <CR><CR>

" allow saving of files as sudo
cmap w!! w !sudo tee > /dev/null %

" write to shell
nnoremap <silent> <leader>xs :.w !$SHELL<CR>
xnoremap <silent> <leader>xs :.w !$SHELL<CR>
nnoremap <silent> <leader>xS :w !$SHELL<CR>

" toggles
nnoremap <silent> col <Cmd>set list!<CR><Bar><Cmd>set list?<CR>
nnoremap <silent> cor <Cmd>set relativenumber!<CR><Bar><Cmd>set relativenumber?<CR>
nnoremap <silent> cos <Cmd>set spell!<CR><Bar><Cmd>set spell?<CR>
nnoremap <silent> cow <Cmd>set wrap!<CR><Bar><Cmd>set wrap?<CR>
nnoremap <silent> cof <Cmd>set foldmethod?<CR>

" search highlight
nnoremap <leader><C-l> :set hlsearch!<CR>

" system clipboard
nnoremap <leader>YG gg"+yG

nnoremap <leader>sv :source $MYVIMRC<CR>
