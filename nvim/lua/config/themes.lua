-- order is important...
vim.g.lightline = {
    colorscheme = 'dracula'
}
vim.cmd('colorscheme dracula')

require("lualine").setup{}
