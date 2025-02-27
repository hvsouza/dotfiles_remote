return {
-- Syntax highlighting and code parsing
    {
        "nvim-treesitter/nvim-treesitter",
        main = "nvim-treesitter.configs",
        build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
        cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
        event = { "BufReadPost", "BufNewFile", "BufWritePre" },
        init = function(plugin)
            vim.opt.foldenable = false
            vim.opt.foldmethod = "expr"
            -- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
            -- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
            -- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which
            -- no longer trigger the **nvim-treesitter** module to be loaded in time.
            -- Luckily, the only things that those plugins need are the custom queries, which we make available
            -- during startup.
            require("lazy.core.loader").add_to_rtp(plugin)
            require("nvim-treesitter.query_predicates")
        end,
        keys = {
            { "<c-i>", desc = "Increment Selection" },
            { "<bs>", desc = "Decrement Selection", mode = "x" },
        },
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "cmake",
                "html",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "ron",
                "rust",
                "toml",
                "vim",
                "vimdoc",
                "git_config",
                "git_rebase",
                "gitattributes",
                "gitcommit",
                "gitignore",
            },
            highlight = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<c-i>",
                    node_incremental = "<c-i>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
            indent = {
                enable = false,
            },
        },
    },

}
