nnoremap <leader>q :q!
nnoremap <leader>w :w<CR>
nnoremap <leader>Y gg"+yG
nnoremap <C-c> <Esc>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
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

