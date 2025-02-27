-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Search files' } )
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { desc = 'Search by grep' } )
vim.keymap.set('n', '<leader>bb', '<cmd>Telescope buffers<cr>', { desc = 'Find existing buffers' } )
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { desc = 'Search Help' } )
vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = 'Search old files' } )
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope file_browser path=%:p:h select_buffer=true<CR>', { desc = 'File Browser' } )
