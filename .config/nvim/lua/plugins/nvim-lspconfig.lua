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
          settings = {
            deno = {
              enablePaths = { "supabase/functions" }
            }
          },
          root_dir = function(...)
            return require("lspconfig.util").root_pattern("deno.json", "deno.jsonc", ".git")(...)
          end,
          autostart = false,
        },
      },
    },
  },
}
