return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end
  },

  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },

  {
    "saecki/crates.nvim",
    ft = { "toml" },
    config = function()
      require("crates").setup {
        completion = {
          cmp = {
            enabled = true
          },
        },
      }

      require("cmp").setup.buffer({
        sources = { { name = "crates" } }
      })
    end
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },

  {
    "tpope/vim-surround",
    lazy = false,
  },

  -- {
  --   "preservim/nerdcommenter",
  --   lazy = false,
  -- },

  {
    "maxmellon/vim-jsx-pretty",
    lazy = false,
  },

  {
    "mustache/vim-mustache-handlebars",
    lazy = false,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true
  },

  {
    "easymotion/vim-easymotion",
    lazy = false,
  },

  -- {
  --   "aserowy/tmux.nvim",
  --   lazy = false,
  --   config = function()
  --     require("tmux").setup()
  --   end
  -- },

  {
    "alvan/vim-closetag",
    lazy = false,
  },

  {
    "andymass/vim-matchup",
    lazy = false,
    config = function ()
      vim.g.matchup_matchparen_offscreen = {}
      vim.g.matchup_matchparen_enabled = 0
    end
  },

  {
    "Exafunction/codeium.vim",
    lazy = false,
    config = function ()
      vim.g.codeium_no_map_tab = true
    end
  },

  {
    "mattn/emmet-vim",
    lazy = false,
  },

  {
    "github/copilot.vim",
    -- lazy = false,
  },

  {
    "Vigemus/iron.nvim",
    lazy = false,
    config = function()
      local iron = require("iron.core")
      local view = require("iron.view")
      local common = require("iron.fts.common")

      iron.setup {
        config = {
          scratch_repl = true,
          repl_definition = {
            sh = {
              command = { "fish" }
            },
            python = {
              command = { "ipython", "--no-autoindent" },
              format = common.bracketed_paste_python,
              block_dividers = { "# %%", "#%%" },
              env = { PYTHON_BASIC_REPL = "1" }
            }
          },
          repl_filetype = function(bufnr, ft)
            return ft
          end,
          dap_integration = true,
          repl_open_cmd = view.split.vertical.botright(50),
        },
        keymaps = {
          toggle_repl = "<Leader>rr",
          -- toggle_repl_with_cmd_1 = "<Leader>rv",
          restart_repl = "<Leader>rR",
          send_motion = "<Leader>rsc",
          visual_send = "<Leader>rsc",
          send_file = "<Leader>rsf",
          send_line = "<Leader>rsl",
          send_paragraph = "<Leader>rsp",
          send_until_cursor = "<Leader>rsu",
          send_mark = "<Leader>rsm",
          send_code_block = "<Leader>rsb",
          send_code_block_and_move = "<Leader>rsn",
          mark_motion = "<Leader>rmc",
          mark_visual = "<Leader>rmc",
          remove_mark = "<Leader>rmd",
          cr = "<Leader>rs<CR>",
          interrupt = "<Leader>rs<Leader>",
          exit = "<Leader>rq",
          clear = "<Leader>rc"
        },
        highlight = {
          italic = true
        },
        ignore_blank_lines = true
      }
    end
  },

  {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
      -- The setup config table shows all available config options with their default values:
require("presence").setup({
    -- General options
    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    neovim_image_text   = "The One True Text Editor", -- Text displayed when hovered over the Neovim image
    main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
    client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = false,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
    file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    show_time           = true,                       -- Show the timer

    -- Rich Presence text options
    editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Working on a private project",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
})
    end
  },

  --{
    --"nvim-treesitter/nvim-treesitter",
    --opts = {
      --ensure_installed = {
        --"vim", "lua", "vimdoc",
        --"html", "css"
      --},
    --},
  --},

  --{
  --"mrcjkb/rustaceanvim",
  --version = "^5",
  --lazy = false,
  --ft = "rust",
  --config = function()
  --local mason_registry = require("mason-registry")
  --local codelldb = mason_registry.get_package("codelldb")
  --local extension_path = codelldb:get_install_path() .. "/extension/"
  --local codelldb_path = extension_path .. "adapter/codelldb"
  --local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
  --local cfg = require("rustaceanvim.config")

  --vim.g.rustaceanvim = {
  --dap = {
  --adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path)
  --},
  --}
  --end,
  --keys = {
  --{ "<Leader>ra", function () vim.lsp.buf.rename() end, desc = "LSP Renamer" }
  --}
  --},

  --{
  --"mfussenegger/nvim-dap",
  --lazy = false,
  --config = function()
  --local dap, dapui = require("dap"), require("dapui")

  --dap.listeners.before.attach.dapui_config = function()
  --dapui.open()
  --end

  --dap.listeners.before.launch.dapui_config = function()
  --dapui.open()
  --end

  --dap.listeners.before.event_terminated.dapui_config = function()
  --dapui.close()
  --end

  --dap.listeners.before.event_exited.dapui_config = function()
  --dapui.close()
  --end
  --end
  --},

  --{
  --"rcarriga/nvim-dap-ui",
  --lazy = false,
  --dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  --config = function()
  --require("dapui").setup()
  --end
  --},
}
