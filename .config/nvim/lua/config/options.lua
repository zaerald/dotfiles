local opt = vim.opt

vim.g.autoformat = false
vim.o.wrap = false
vim.g.snacks_animate = false

opt.hlsearch = false
opt.incsearch = true
opt.smartcase = true
opt.showmatch = true
opt.ignorecase = true
opt.wrapscan = false
opt.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20"
opt.conceallevel = 2
opt.scrolloff = 8
opt.listchars:append({ lead = "." })
opt.listchars:append({ trail = "·" })
opt.listchars:append({ tab = "▸ " })
opt.listchars:append({ extends = "»" })
opt.listchars:append({ precedes = "«" })
opt.listchars:append({ nbsp = "⣿" })

