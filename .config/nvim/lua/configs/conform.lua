local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biome-check"},
    javascriptreact = { "biome-check" },
    typescript = { "biome-check" },
    typescriptreact = { "biome-check" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 3000,
    lsp_fallback = true,
    lsp_format = "fallback",
  },
}

return options
