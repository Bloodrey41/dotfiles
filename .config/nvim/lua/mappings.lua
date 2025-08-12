require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

vim.keymap.del("n", "<2-LeftMouse>")
map("n", "<Leader>w", "<cmd>w<CR>")
map("n", "<Leader>q", "<cmd>q<CR>")
map("n", "<Leader>wq", "<cmd>wq<CR>")
map("n", "<Leader>v", "<cmd>vsplit<CR>")
map("n", "<Leader>lf", "<cmd>!leptosfmt ./**/*.rs<CR>", { desc = "leptosfmt" })

-- fugitive.vim
map("n", "<Leader>gs", "<cmd>Git<CR>", { desc = "Git status" })
map("n", "<Leader>gc", "<cmd>Git commit<CR>", { desc = "Git commit" })
map("n", "<Leader>gl", "<cmd>Git log<CR>", { desc = "Git log" })
map(
  "n",
  "<Leader>gm",
  function()
    local head = vim.fn["FugitiveHead"]()

    vim.cmd("Git pull origin " .. head)
  end,
  { desc = "Git pull" }
)
map(
  "n",
  "<Leader>gp",
  function()
    local head = vim.fn["FugitiveHead"]()

    vim.cmd("Git push origin " .. head)
  end,
  { desc = "Git push" }
)

-- EasyMotion
map("n", "<Leader>s", "<Plug>(easymotion-s2)", { desc = "EasyMotion" })

-- Codeium
map(
  "i",
  "<C-g>",
  function()
    return vim.fn["codeium#Accept"]()
  end,
  { expr = true, silent = true }
)
map(
  "i",
  "<C-;>",
  function()
    return vim.fn["codeium#CycleCompletions"](1)
  end,
  { expr = true, silent = true }
)
map(
  "i",
  "<C-,>",
  function()
    return vim.fn["codeium#CycleCompletions"](-1)
  end,
  { expr = true, silent = true }
)
map(
  "i",
  "<C-x>",
  function()
    return vim.fn["codeium#Clear"]()
  end,
  { expr = true, silent = true }
)

-- Nvim DAP
--map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
--map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
--map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
--map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
--map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
--map(
--"n",
--"<Leader>dd",
--"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
--{ desc = "Debugger set conditional breakpoint" }
--)
--map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
--map("n", "<Leader>dr", "<cmd>lua reqiure'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
--map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
