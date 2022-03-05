nnoremap <leader><C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <leader><C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" quit if NERDTree is the last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

