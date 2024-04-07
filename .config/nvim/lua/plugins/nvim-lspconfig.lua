vim.lsp.set_log_level("debug")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern("package.json")(...)
          end,
        },
        denols = {
          root_dir = function(...)
            return require("lspconfig.util").root_pattern("deno.json", "deno.jsonc", ".git")(...)
          end,
          autostart = false,
        },
      },
    },
  },
}
