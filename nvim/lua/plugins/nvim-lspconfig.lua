return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        tsserver = {
          settings = {
            typescript = {
              preferences = {
                quoteStyle = "single",
              },
            },
            javascript = {
              preferences = {
                quoteStyle = "single",
                useSemicolonStyle = false,
              },
            },
          },
        },
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        intelephense = {},
        rust_analyzer = {},
        rls = {},
        cssls = {},
        html = {},
      },
    },
  },
}
