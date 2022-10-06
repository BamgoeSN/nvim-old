local map = vim.api.nvim_set_keymap

-- map('i', 'jk', '', '{}')

-- Moving to definition etc.
map('n', 'gd', '<Plug>(coc-definition)', {})
map('n', 'gy', '<Plug>(coc-type-definition)', {})
map('n', 'gi', '<Plug>(coc-implementation)', {})
map('n', 'gr', '<Plug>(coc-references)', {})

-- Fzf keymap
map('n', '<C-P>', "<cmd>lua require('fzf-lua').files()<CR>", {noremap=true, silent=true})
