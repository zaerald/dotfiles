if executable('rg')
  let g:rg_derive_root='true'
endif

lua require'telescope'.load_extension('fzy_native')

" - telescope
nnoremap <C-p> <cmd>Telescope find_files find_command=rg,--files prompt_prefix=🔍<cr>
nnoremap <leader>ff <cmd>Telescope git_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

