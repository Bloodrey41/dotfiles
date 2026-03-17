require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.o.relativenumber = true
vim.g.gruvbox_contrast_dark = "hard"
vim.cmd([[
highlight Normal ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight SignColum ctermbg=NONE guibg=NONE
highlight NvimTreeNormal ctermbg=NONE guibg=NONE
]])

require("nvim-tree").setup({
  filters = {
    dotfiles = false
  },
  update_focused_file = {
    enable = true
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
})
