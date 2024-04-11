return {
    {
        "stevearc/conform.nvim",
        opts = { 'BufReadPre', 'BufNewFile'},
        config = function()
            require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    rust = { "rustfmt" },
    go = { "gofmt", "goimports" },     
  },
})
            vim.keymap.set( {'n', 'v'}, '<leader>fl', function()
                require('conform').format({
                    lsp_fallback = true,
                    async = true,
                    timeout_ms = 500
                })
            end, { desc = 'Format file or range (in visual mode)'}
            )
        end,
    }
}
