local opt = vim.opt

vim.g.autoformat = false

opt.hlsearch = false
opt.guicursor = nil
opt.conceallevel = 0
opt.scrolloff = 8
opt.listchars:append({ lead = "." })
opt.listchars:append({ trail = "·" })
opt.listchars:append({ tab = "▸ " })
opt.listchars:append({ extends = "»" })
opt.listchars:append({ precedes = "«" })
opt.listchars:append({ nbsp = "⣿" })
