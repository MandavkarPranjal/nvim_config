return {
    "pocco81/auto-save.nvim",
    config = function()
        require("auto-save").setup({
   })
        vim.keymap.set("n", "<C-s>", ":ASToggle<CR>", { noremap = true })
    end
}
