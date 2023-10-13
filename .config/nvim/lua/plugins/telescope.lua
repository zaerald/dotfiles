return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "vertical",
      },
      pickers = {
        buffers = {
          show_all_buffers = true,
          theme = "dropdown",
          mappings = {
            i = {
              ["<C-x>"] = "delete_buffer",
            },
          },
        },
      },
    },
  },
}
