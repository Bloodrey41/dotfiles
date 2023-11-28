return {
  {
    "mattn/emmet-vim",
    setup = function()
      vim.g.user_emmet_settings = {
        html = {
          quote_char = "'",
        },
      }
    end,
  },
}
