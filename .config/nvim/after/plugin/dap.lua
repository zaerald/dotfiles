-- open automatically when a new debug session is created
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.keymap.set("n", "<leader>dc", require "dap".continue)
vim.keymap.set("n", "<leader>dv", require "dap".step_over)
vim.keymap.set("n", "<leader>di", require "dap".step_into)
vim.keymap.set("n", "<leader>do", require "dap".step_out)
vim.keymap.set("n", "<leader>db", require "dap".toggle_breakpoint)

