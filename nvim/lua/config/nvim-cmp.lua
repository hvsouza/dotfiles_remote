local cmp = require("cmp")

local luasnip = require("luasnip")

local nvim_lsp = require("lspconfig")

require('lsp_signature').setup({
  hint_prefix = " ",
})
vim.keymap.set({ 'i' }, '<C-n>', function ()
  require"lsp_signature".select_signature_key()
end, { silent = true, noremap = true, desc = 'select signature' })



cmp.setup({
  completion = {
    completeopt = "menu,menuone,preview,noselect",
  },
  snippet = { -- configure how nvim-cmp interacts with snippet engine
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
    -- ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
  }),
  -- sources for autocompletion
  sources = cmp.config.sources({
    { name = "copilot" },
	{ name = 'nvim_lsp' },
    { name = "luasnip" }, -- snippets
    { name = "buffer" }, -- text within current buffer
    { name = "path" }, -- file system paths
  }),

})
 -- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

nvim_lsp.clangd.setup {
	capabilities = capabilities,
	cmd = { "clangd",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--pretty"
	}
}

-- nvim_lsp.lua_ls.setup {
vim.lsp.config('lua_ls',
  {
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
)


nvim_lsp.pyright.setup {}
nvim_lsp.cmake.setup{}
nvim_lsp.jsonls.setup{}

