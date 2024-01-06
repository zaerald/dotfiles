return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function()
          vim.cmd [[
            setlocal number
            setlocal relativenumber
          ]]
        end,
      }
    },
  },
}

