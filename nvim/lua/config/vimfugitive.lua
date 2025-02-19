-- Fugitive is amazing :o
vim.keymap.set("n", "<leader>gg", ":Git<CR>", { desc = "Vim fugitive" })
-- Autoclean it (might never use it)
vim.cmd("autocmd BufReadPost fugitive://* set bufhidden=delete")
vim.cmd("autocmd FileType fugitive nmap <buffer> q gq")

