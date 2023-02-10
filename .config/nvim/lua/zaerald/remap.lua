-- move selected lines
vim.keymap.set("v", "J", "<cmd>m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", "<cmd>m '<-2<CR>gv=gv")

-- search and replace
vim.keymap.set("n", "<leader>s", "<cmd>%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- resize
vim.keymap.set("n", "<leader>+", "<cmd>vertical resize +10<CR>", { silent = true })
vim.keymap.set("n", "<leader>-", "<cmd>vertical resize -10<CR>", { silent = true })

-- toggles
vim.keymap.set("n", "col", "<cmd>set list!<CR><Bar><Cmd>set list?<CR>", { silent = true })
vim.keymap.set("n", "cor", "<cmd>set relativenumber!<CR><Bar><Cmd>set relativenumber?<CR>", { silent = true })
vim.keymap.set("n", "cos", "<cmd>set spell!<CR><Bar><Cmd>set spell?<CR>", { silent = true })
vim.keymap.set("n", "cow", "<cmd>set wrap!<CR><Bar><Cmd>set wrap?<CR>", { silent = true })
vim.keymap.set("n", "coh", "<cmd>set hlsearch!<CR><Bar><Cmd>set hlsearch?<CR>", { silent = true })
vim.keymap.set("n", "cof", "<cmd>set foldmethod?<CR>", { silent = true })

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

-- filetypes
vim.keymap.set("n", "<leader>,", ":set filetype=")
vim.keymap.set("n", "<leader>xf", "<cmd>set filetype=sh<CR>")

