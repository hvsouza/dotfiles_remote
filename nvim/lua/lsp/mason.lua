return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")



    -- enable mason and configure icons
	mason.setup({
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
		ensure_installed = {
			"codelldb",
			"clangd",
			"clang-format",
			"pyright",
			"lua_ls"
		},
	})

	require("mason-lspconfig").setup()

  end,
}
