lua << EOF
require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true,
  }
}
EOF

autocmd FileType javascript.jsx,typescript.tsx setlocal commentstring={/*\ %s\ */}

