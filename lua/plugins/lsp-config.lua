return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "biome", "tsserver", "vtsls", "sqlls", "clangd" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.rust_analyzer.setup ({
                settings = {
                    ['rust_analyzer'] = {},
                },
            })
           lspconfig.gopls.setup({
               cmd = {"gopls"},
                filetypes = {"go", "gomod", "gowork", "gotmpl"},
                settings = {
                    gopls = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true,
                        }
                    }
                }
            })
           lspconfig.tsserver.setup({})
           vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
           vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
           vim.keymap.set({'n', 'v' }, '<leader>aa', vim.lsp.buf.code_action, {})

        end
    }
}
