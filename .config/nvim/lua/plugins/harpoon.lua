return {
  {
    lazy = false,
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 10,
      },
    },
    keys = {
      { "<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file" },
      { "<leader>m", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Open harpoon" },

      { "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Navigate file 1" },
      { "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Navigate file 2" },
      { "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Navigate file 3" },
      { "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Navigate file 4" },
      { "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<cr>", desc = "Navigate file 5" },
      { "<leader>6", "<cmd>lua require('harpoon.ui').nav_file(6)<cr>", desc = "Navigate file 6" },
      { "<leader>7", "<cmd>lua require('harpoon.ui').nav_file(7)<cr>", desc = "Navigate file 7" },
      { "<leader>8", "<cmd>lua require('harpoon.ui').nav_file(8)<cr>", desc = "Navigate file 8" },
      { "<leader>9", "<cmd>lua require('harpoon.ui').nav_file(9)<cr>", desc = "Navigate file 9" },
      { "<leader>0", "<cmd>lua require('harpoon.ui').nav_file(0)<cr>", desc = "Navigate file 0" },

      { "<leader>h1", "<cmd>lua require('harpoon.tmux').gotoTerminal(1)<cr>", desc = "Navigate term 1" },
      { "<leader>h2", "<cmd>lua require('harpoon.tmux').gotoTerminal(2)<cr>", desc = "Navigate term 2" },
    },
  },
}
