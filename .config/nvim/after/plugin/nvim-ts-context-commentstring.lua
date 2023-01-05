require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true,
  }
}

vim.cmd("autocmd FileType typescriptreact,javascript.jsx,typescript.tsx setlocal commentstring={/*\\ %s\\ */}")

