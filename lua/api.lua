local api = vim.api

-- Restore cursor to vertical on exit
api.nvim_create_autocmd(
  "VimLeave",
  {
    pattern = {"*"},
    command = [[set guicursor=a:ver30-iCursor-blinkwait300-blinkon200-blinkoff150]],
  }
)
