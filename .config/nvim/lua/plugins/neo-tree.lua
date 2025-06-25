return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right",
      width = 60,
      mappings = {
        ["O"] = {
          function(state)
            local path = state.tree:get_node().path
            vim.fn.jobstart({ "wsl-open", path }, {
              detach = true,
              on_exit = function(_, code)
                if code ~= 0 then
                  vim.notify("Failed to open: " .. path, vim.log.levels.ERROR)
                end
              end,
            })
          end,
          desc = "Open with System Applicaiton",
        },
      },
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
}
