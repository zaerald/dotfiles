if vim.fn.executable('rg') == 1 then
  vim.g.rg_derive_root='true'
end

require("telescope").setup {
  defaults = {
    path_display = { "truncate" },
    layout_strategy = "vertical",
  },
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--ignore", "--hidden", "--glob=!.git/*" },
      prompt_prefix ="🔍",
    },
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = "dropdown",
      previewer = false,
      mappings = {
        i = {
          ["<C-x>"] = "delete_buffer",
        },
      }
    }
  }
}
require("telescope").load_extension("fzy_native")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, { })
vim.keymap.set("n", "fg", builtin.live_grep, {})
vim.keymap.set("n", "fe", builtin.resume, {})
vim.keymap.set("n", "fu", builtin.buffers, {})
vim.keymap.set("n", "fo", builtin.oldfiles, {})
vim.keymap.set("n", "ft", builtin.git_commits, {})
vim.keymap.set("n", "fr", builtin.git_branches, {})
vim.keymap.set("n", "fh", builtin.git_branches, {})
vim.keymap.set("n", "fH", builtin.help_tags, {})

require("telescope").load_extension('harpoon')
vim.keymap.set("n", "fH", ":Telescope harpoon marks<CR>")

vim.cmd("autocmd User TelescopePreviewerLoaded setlocal wrap")
