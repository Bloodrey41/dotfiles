require("nvchad.configs.lspconfig").defaults()

local servers = { "ts_ls", "intelephense", "tailwindcss", "pyright", "lua_ls", "biome", "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
