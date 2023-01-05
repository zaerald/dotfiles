vim.g.startify_session_dir = vim.fn.stdpath('config') .. "/session"
vim.g.startify_lists = {
  { type = "dir", header = { "Current Directory: " .. vim.loop.cwd() } },
  { type = "files", header = { "Files" } },
  { type = "bookmarks", header = { "Bookmarks" } },
}

vim.g.startify_bookmarks = {
  { n = "~/.config/nvim/init.lua" },
  { z = "~/.zshrc" },
  { w = "~/workspace/" },
}

vim.g.startify_session_autoload = 1
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_session_persistence = 1

