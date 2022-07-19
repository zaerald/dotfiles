nnoremap <C-c> <Esc>
nnoremap <leader>q :q!
nnoremap <leader>Q :qa!
nnoremap <leader>w :w<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

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

" filetypes
nnoremap <silent> <leader>, :set filetype=
nnoremap <silent> <leader>xf :set filetype=sh<CR>

" toggles
nnoremap <silent> col <Cmd>set list!<CR><Bar><Cmd>set list?<CR>
nnoremap <silent> cor <Cmd>set relativenumber!<CR><Bar><Cmd>set relativenumber?<CR>
nnoremap <silent> cos <Cmd>set spell!<CR><Bar><Cmd>set spell?<CR>
nnoremap <silent> cow <Cmd>set wrap!<CR><Bar><Cmd>set wrap?<CR>
nnoremap <silent> coh <Cmd>set hlsearch!<CR><Bar><Cmd>set hlsearch?<CR>
nnoremap <silent> cof <Cmd>set foldmethod?<CR>

" system clipboard
nnoremap <leader>YG gg"+yG

" refresh syntax highlights
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

nnoremap <leader>sv :source $MYVIMRC<CR>

