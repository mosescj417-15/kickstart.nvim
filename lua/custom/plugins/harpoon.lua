vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  { src = 'https://github.com/theprimeagen/harpoon', version = 'harpoon2' },
}

local harpoon = require 'harpoon'
vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Harpoon: Mark file' })
vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon: Toggle menu' })

-- Quick Navigation Keys
vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end, { desc = 'Harpoon: File 1' })
vim.keymap.set('n', '<C-j>', function() harpoon:list():select(2) end, { desc = 'Harpoon: File 2' })
vim.keymap.set('n', '<C-k>', function() harpoon:list():select(3) end, { desc = 'Harpoon: File 3' })

vim.keymap.set('n', '<C-l>', function() harpoon:list():select(4) end, { desc = 'Harpoon: File 4' })
