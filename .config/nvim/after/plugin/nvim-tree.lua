require("nvim-tree").setup {
  auto_reload_on_write = false,
  view = {
    number = true,
    relativenumber = true,
    width = 50
  },
  renderer = {
    highlight_opened_files = "all",
    icons = {
      show = {
        folder_arrow = false
      }
    }
  },
  diagnostics = {
    enable = true
  },
  actions = {
    expand_all = {
      max_folder_discovery = 5
    }
  }
}

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader><C-f>", ":NvimTreeFindFile<CR>")

