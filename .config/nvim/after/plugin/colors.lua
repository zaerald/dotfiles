vim.cmd("set termguicolors")
vim.cmd("set background=dark")
vim.cmd("set t_Co=256")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


vim.cmd[[colorscheme tokyonight]]

require("tokyonight").setup({
  style = "night",
  transparent = true,
  terminal_colors = true,
  styles = {
    functions = { italic = true }
  },
})

