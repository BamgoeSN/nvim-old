-- Setting terminal background as default for transparent terminal
vim.api.nvim_create_autocmd(
  "ColorScheme",
  {
    pattern = {"*"},
    command = [[hi normal guibg=000000]]
  }
)

vim.cmd("colorscheme nord")
