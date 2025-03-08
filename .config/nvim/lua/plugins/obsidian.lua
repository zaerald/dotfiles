vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>")
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>")
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<CR>")
vim.keymap.set("n", "<leader>om", "<cmd>ObsidianTomorrow<CR>")
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>")
vim.keymap.set("n", "<leader>ow", "<cmd>ObsidianQuickSwitch<CR>")
vim.keymap.set("n", "<leader>or", "<cmd>ObsidianRename<CR>")
vim.keymap.set("n", "<leader>od", "<cmd>ObsidianDailies<CR>")
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>")
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>")
vim.keymap.set("n", "<leader>oL", "<cmd>ObsidianLinkNew<CR>")
vim.keymap.set("n", "<leader>og", "<cmd>ObsidianTags<CR>")
vim.keymap.set("n", "<leader>op", "<cmd>ObsidianPasteImg<CR>")

-- checklist maps
vim.keymap.set("n", "<leader>ocr", ":s/[~>x ]\\]/ \\]/<CR>", { noremap = true, silent = true })
vim.keymap.set("x", "<leader>ocr", ":s/[~>x ]\\]/ \\]/<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>occ", ":s/[~>x ]\\]/x\\]/<CR>", { noremap = true, silent = true })
vim.keymap.set("x", "<leader>occ", ":s/[~>x ]\\]/x\\]/<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ocl", ":s/[~>x ]\\]/\\~\\]/<CR>", { noremap = true, silent = true })
vim.keymap.set("x", "<leader>ocl", ":s/[~>x ]\\]/\\~\\]/<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ocf", ":s/[~>x ]\\]/>\\]/<CR>", { noremap = true, silent = true })
vim.keymap.set("x", "<leader>ocf", ":s/[~>x ]\\]/>\\]/<CR>", { noremap = true, silent = true })

return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    daily_notes = {
      folder = "daily",
      date_format = "%Y/%m-%B/%Y-%m-%d",
      template = nil,
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    mappings = {
      ["gf"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      ["<leader>ch"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
      ["<cr>"] = {
        action = function()
          return require("obsidian").util.smart_action()
        end,
        opts = { buffer = true },
      },
    },
    opts = {
      workspaces = {
        {
          name = "no-vault",
          path = function()
            return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
          end,
          overrides = {
            notes_subdir = vim.NIL,
            new_notes_location = "current_dir",
            templates = {
              subdir = vim.NIL,
            },
          },
        },
      },
      attachments = {
        img_folder = "assets/images",
      },
      image_name_func = function()
        return string.format("%s-", os.date("%Y%m%d%H%M%S"))
      end,
    },
  },
}
