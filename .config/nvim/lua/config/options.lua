local opt = vim.opt

opt.hlsearch = false
opt.guicursor = nil
opt.conceallevel = nil
opt.scrolloff = 8
opt.listchars:append({ lead = "." })
opt.listchars:append({ trail = "·" })
opt.listchars:append({ tab = "▸ " })
opt.listchars:append({ extends = "»" })
opt.listchars:append({ precedes = "«" })
opt.listchars:append({ nbsp = "⣿" })
