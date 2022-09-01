if executable('rg')
  let g:rg_derive_root='true'
endif

lua << EOF
require("telescope").setup {
  defaults = {
    path_display = { "truncate" },
    layout_strategy = "vertical",
  },
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = "dropdown",
      previewer = false,
      mappings = {
        i = {
          ["<c-x>"] = "delete_buffer",
        }
      }
    }
  }
}
EOF

lua require'telescope'.load_extension('fzy_native')

" - telescope
nnoremap <C-p> <cmd>Telescope find_files find_command=rg,--files,--ignore,--hidden,--glob=!.git/* prompt_prefix=🔍<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fu <cmd>Telescope buffers<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <leader>ft <cmd>Telescope git_commits<cr>
nnoremap <leader>fr <cmd>Telescope git_branches<cr>

autocmd User TelescopePreviewerLoaded setlocal wrap

