--[[ init.lua ]]

-- Loading impatient for quick loading
require('impatient')

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins
require('color')     -- Colors
require('api')       -- API (Autocmd)

-- Configure lualine
require('lualine').setup {
  theme = 'nord'
}

-- Configure coc
vim.cmd [[inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"]]

-- Configure nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("nvim-tree").setup()

-- Configure indentLine
vim.g.indentLine_enabled = 1
vim.g.indentLine_char = '▏'
