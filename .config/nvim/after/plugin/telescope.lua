if vim.fn.executable('rg') == 1 then
  vim.g.rg_derive_root = 'true'
end

require("telescope").setup {
  defaults = {
    path_display = { "truncate" },
    layout_strategy = "vertical",
  },
  pickers = {
    find_files = {
      find_command = { "rg", "--files", "--ignore", "--hidden", "--glob=!.git/*" },
      prompt_prefix = "🔍",
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
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "fg", builtin.live_grep, {})
vim.keymap.set("n", "fe", builtin.resume, {})
vim.keymap.set("n", "fu", builtin.buffers, {})
vim.keymap.set("n", "fc", builtin.commands, {})
vim.keymap.set("n", "fo", builtin.oldfiles, {})
vim.keymap.set("n", "fd", builtin.diagnostics, {})

-- git
vim.keymap.set("n", "fs", builtin.git_status, {})
vim.keymap.set("n", "ft", builtin.git_commits, {})
vim.keymap.set("n", "fr", builtin.git_branches, {})
vim.keymap.set("n", "fH", builtin.help_tags, {})

-- lsp
vim.keymap.set("n", "flr", builtin.lsp_references, {})
vim.keymap.set("n", "gR", builtin.lsp_references, {})
vim.keymap.set("n", "fli", builtin.lsp_incoming_calls, {})
vim.keymap.set("n", "flo", builtin.lsp_outgoing_calls, {})
vim.keymap.set("n", "fld", builtin.lsp_definitions, {})

require("telescope").load_extension('harpoon')
vim.keymap.set("n", "fh", ":Telescope harpoon marks<CR>")

vim.cmd("autocmd User TelescopePreviewerLoaded setlocal wrap")

