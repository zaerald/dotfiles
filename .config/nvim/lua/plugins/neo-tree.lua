return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = 'right',
        width = 60,
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.opt_local.number = true
            vim.opt_local.relativenumber = true
          end,
        },
      },
    },
  },
}

