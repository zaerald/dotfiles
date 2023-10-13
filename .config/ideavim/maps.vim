nnoremap <C-c> <Esc>
nnoremap <leader>q :q!
nnoremap <leader>Q :qa!
nnoremap <leader>w :w<CR>

nnoremap Q <nop>

" navigation
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap H zH
vnoremap H zH
nnoremap L zL
vnoremap L zL
nnoremap n nzzzv
nnoremap N Nzzzv

" insert lines without insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" close all buffers except current
nnoremap <silent> <leader>bo :w <bar> %bd <bar> e# <bar> bd# <CR><CR>

" system clipboard
nnoremap <leader>YG gg"+yG
