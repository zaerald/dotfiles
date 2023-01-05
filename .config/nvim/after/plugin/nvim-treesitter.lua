require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "bash",
    "css",
    "go",
    "html",
    "http",
    "java",
    "javascript",
    "json",
    "json5",
    "python",
    "regex",
    "scss",
    "tsx",
    "typescript",
    "vue",
    "yaml",
  },
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }

