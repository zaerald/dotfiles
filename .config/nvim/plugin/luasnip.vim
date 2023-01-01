lua << EOF
  local ls = require("luasnip")

  require("luasnip.loaders.from_vscode").lazy_load()
  require("luasnip.loaders.from_vscode").lazy_load({
    paths = { vim.fn.stdpath('config') .. '/my-snippets' }
  })
EOF

imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

