local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")

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
      sort_lastused = false,
      theme = "dropdown",
      mappings = {
        i = {
          ["<C-x>"] = "delete_buffer",
        },
      }
    }
  },
  extensions = {
    live_grep_args = {
      mappings = {
        i = {
          ["<C-k>"] = lga_actions.quote_prompt(),
          ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
        },
      },
    },
    fzf = {
      fuzzy = true,
    }
  },
}

-- load extensions
local exts = { "live_grep_args", "fzf", "harpoon" }
for _, ext in ipairs(exts) do
  telescope.load_extension(ext)
end

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "fg", telescope.extensions.live_grep_args.live_grep_args, {})
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
vim.keymap.set("n", "fls", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "flS", builtin.lsp_workspace_symbols, {})
vim.keymap.set("n", "fli", builtin.lsp_incoming_calls, {})
vim.keymap.set("n", "flo", builtin.lsp_outgoing_calls, {})
vim.keymap.set("n", "fld", builtin.lsp_definitions, {})

vim.keymap.set("n", "fh", ":Telescope harpoon marks<CR>")

vim.cmd("autocmd User TelescopePreviewerLoaded setlocal wrap")
