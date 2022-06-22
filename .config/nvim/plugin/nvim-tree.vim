nnoremap <C-n> :NvimTreeFocus<CR>
nnoremap <leader><C-f> :NvimTreeFindFile<CR>
nnoremap <leader><C-t> :NvimTreeToggle<CR>
nnoremap <leader><C-r> :NvimTreeRefresh<CR>
nnoremap <leader><F4> :NvimTreeCollapse<CR>

lua << EOF
require("nvim-tree").setup {
  view = {
    relativenumber = false
  },
  renderer = {
    icons = {
      show = {
        folder_arrow = false
      }
    }
  },
  diagnostics = {
    enable = true
  }
}
EOF

