vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-\\>", "<Cmd>TmuxNavigateLastActive<CR>", { silent = true })
vim.keymap.set("n", "<C-Space>", "<Cmd>TmuxNavigateNavigateNext<CR>", { silent = true })

-- toggles
vim.keymap.set("n", "<leader>uH", "<cmd>set hlsearch!<CR><Bar><Cmd>set hlsearch?<CR>", { silent = true })
vim.keymap.set("n", "<leader>uz", "<cmd>ZenMode<CR>", { silent = true })
vim.keymap.set("n", "<leader>un", "<cmd>set wrapscan!<CR><Bar><Cmd>set wrapscan?<CR>", { silent = true })

-- navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })
vim.keymap.set("n", "n", "nzzzv", { silent = true })
vim.keymap.set("n", "N", "Nzzzv", { silent = true })
vim.keymap.set("n", "H", "zH", { silent = true })
vim.keymap.set("v", "H", "zH", { silent = true })
vim.keymap.set("n", "L", "zL", { silent = true })
vim.keymap.set("v", "L", "zL", { silent = true })

-- yank path/filenames
vim.keymap.set("n", "yf", "<cmd>let @+=expand('%:t')<CR>")
vim.keymap.set("n", "yp", "<cmd>let @+=expand('%')<CR>")
vim.keymap.set("n", "yP", "<cmd>let @+=expand('%:p')<CR>")
vim.keymap.set("n", "yd", "<cmd>let @+=expand('%:h')<CR>")
vim.keymap.set("n", "yD", "<cmd>let @+=expand('%:p:h')<CR>")

-- read/write to shell
vim.keymap.set("n", "<leader>xr", ":r!")
vim.keymap.set("n", "<leader>xR", "!!$SHELL")
vim.keymap.set("n", "<leader>xs", "<cmd>.w !$SHELL<CR>")
vim.keymap.set("x", "<leader>xs", "<cmd>.w !$SHELL<CR>")
vim.keymap.set("n", "<leader>xS", "<cmd>w !$SHELL<CR>")
