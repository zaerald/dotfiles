vim.g.neoformat_try_node_exe = 1

vim.g.neoformat_format_on_save = false
local function toggleNeoformatOnSave()
  vim.g.neoformat_format_on_save = not vim.g.neoformat_format_on_save

  local auGroup = vim.api.nvim_create_augroup("neoformatFormatOnSave", { clear = true })
  if vim.g.neoformat_format_on_save then
    vim.api.nvim_create_autocmd("BufWritePre", {
      command = "try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry",
      group = auGroup,
    })
  else
    vim.api.nvim_del_augroup_by_id(auGroup)
  end
end

vim.keymap.set("n", "<leader>fM", toggleNeoformatOnSave)

