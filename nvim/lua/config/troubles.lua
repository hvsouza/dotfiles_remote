vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- Highlight entire line for errors
-- Highlight the line number for warnings
vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN]  = "",
            [vim.diagnostic.severity.HINT]  = "",
            [vim.diagnostic.severity.HINT]  = "",
        },
    },
    update_in_insert = true, -- another options is `set signcolumns=yes`
})

