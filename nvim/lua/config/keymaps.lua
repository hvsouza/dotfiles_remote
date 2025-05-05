vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General Keymaps -------------------

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
vim.keymap.set("n", "<C-G>", ":nohl<CR>", { desc = "Clear search highlights" })


-- window management
vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Window control" })

vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffer management

vim.keymap.set("n", "<leader>bb", ":ls<CR>:b<Space>", { desc = "List buffers" }) -- list buffers
vim.keymap.set("n", "<leader>bl", ":ls<CR>:b<Space>#<CR><CR>", { desc = "Previous buffer" }) -- previous buffer
vim.keymap.set("n", "<leader>bk", ":Bclose<CR>", { desc = "Close buffer", silent = true }) -- list buffers

-- Generic Keymaps -------------------

vim.keymap.set("n", "<leader>.", ":e<Space>", { desc = "Quick open file" })
vim.keymap.set("n", "<leader>m", ":w<CR>", { desc = "Quick save file" })
vim.keymap.set("n", "<leader>tw", ":set wrap!<CR>", { desc = "Toggle wrap" })
vim.keymap.set("i", "<c-a>", "<Home>", { desc = "Ctrl-a begin of line" })
vim.keymap.set("i", "<c-e>", "<End>", { desc = "Ctrl-e end of line" })
vim.keymap.set("n", "<F3>", '<ESC>:exec &mouse!=""? "set mouse=" : "set mouse=nv"<CR>', { desc = "Toggle mouse" })
vim.keymap.set("n", "<F10>", ":set invnumber invrelativenumber <CR>", { desc = "Toggle line numbers" })

vim.keymap.set("i", "(;", "(<CR>);<C-c>O")
vim.keymap.set("i", "{;", "{<CR>};<C-c>O")
vim.keymap.set("i", "[;", "[<CR>];<C-c>O")
vim.keymap.set("i", "(<Space>", "(  )<C-c>hi")
vim.keymap.set("i", "{<Space>", "{  }<C-c>hi")
vim.keymap.set("i", "[<Space>", "[  ]<C-c>hi")
vim.keymap.set("i", "(<CR>", "(<CR>)<C-c>O")
vim.keymap.set("i", "{<CR>", "{<CR>}<C-c>O")
vim.keymap.set("i", "[<CR>", "[<CR>]<C-c>O")

-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set("n", "^", "g^")
-- vim.keymap.set("n", "0", "g0")


-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<C-Up>", "<cmd>resize +1<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -1<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -1<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +1<cr>", { desc = "Increase window width" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })


-- Better indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<space>fc", "<cmd>e ~/.config/nvim/init.lua<cr>", { desc = "NVim Config. file" })


-- Do not include white space characters when using $ in visual mode,
-- see https://vi.stackexchange.com/q/12607/15292
vim.keymap.set("x", "$", "g_")


-- Copy entire buffer.
vim.keymap.set("n", "<leader>y", "<cmd>%yank<cr>", { desc = "yank entire buffer" })
-- Copy to clipboard
vim.keymap.set('v', '<leader>y', '"+y', { desc = 'Visual mode yank to clipboard' })
vim.keymap.set('n', '<leader>Y', '"+yg_', { desc = 'Normal mode yank line to clipboard' })
vim.keymap.set('n', '<leader>y', '"+y', { desc = 'Normal mode yank to clipboard' })
vim.keymap.set('n', '<leader>yy', '"+yy', { desc = 'Normal mode yank all line to clipboard' })

-- Paste from clipboard
vim.keymap.set('n', '<leader>p', '"+p', { desc = 'Paste from clipboard' })
vim.keymap.set('n', '<leader>P', '"+P', { desc = 'Paste in-place from clipboard' })
vim.keymap.set('v', '<leader>p', '"+p', { desc = 'Paste from clipboard' })
vim.keymap.set('v', '<leader>P', '"+P', { desc = 'Paste in-place from clipboard' })

-- Disable command-line window
vim.keymap.set('n', 'q:', '<Nop>')
vim.keymap.set('n', 'q/', '<Nop>')
vim.keymap.set('n', 'q?', '<Nop>')

-- Quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })



-- Better order for wide menu
vim.cmd([[
    cnoremap <expr> <Up>    pumvisible() ? "\<Left>"  : "\<Up>"
    cnoremap <expr> <Down>  pumvisible() ? "\<Right>" : "\<Down>"
    cnoremap <expr> <Left>  pumvisible() ? "\<Up>"    : "\<Left>"
    cnoremap <expr> <Right> pumvisible() ? "\<Down>"  : "\<Right>"
]])

-- Fix my cazzate
vim.cmd([[
	cnoreabbrev Wq wq
	cnoreabbrev WQ wq
	cnoreabbrev W w
]])

