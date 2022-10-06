local api = vim.api

local customScheme = api.nvim_create_augroup("CustomColorScheme", {clear = true})
-- Set terminal background as default for transparent terminal
api.nvim_create_autocmd(
  "ColorScheme",
  {
    group = customScheme,
    pattern = {"*"},
    command = [[hi normal guibg=000000]]
  }
)
-- Set command color to a brighter one
api.nvim_create_autocmd(
  "ColorScheme",
  {
      group = customScheme,
      command = [[hi LineNr guifg=#8FBCBB guibg=None ctermfg=14 ctermbg=None]]
  }
)

vim.cmd("colorscheme nord")
