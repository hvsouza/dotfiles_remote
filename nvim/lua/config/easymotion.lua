-- Disable default mappings
vim.cmd("let g:EasyMotion_do_mapping = 0 ")

-- Jump to anywhere you want with minimal keystrokes, with just one key binding.
-- `s{char}{label}`
vim.keymap.set("n", "s", "<Plug>(easymotion-bd-f)", { desc = "Easymotion for easyness" })

-- JK motions: Line motions
vim.keymap.set("n", "<Leader>j", "<Plug>(easymotion-j)", { desc = "Easymotion on lines" })
vim.keymap.set("n", "<Leader>k", "<Plug>(easymotion-k)", { desc = "Easymotion on lines" })



