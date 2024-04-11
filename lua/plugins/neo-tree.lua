return 
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      vim.keymap.set('n', '<leader>n', ':Neotree toggle<CR>', {})
      vim.keymap.set('n', '<leader>t', ':terminal<CR>', {})
      vim.g.neotree_enabled = 1  
      vim.g.neotree_show_hidden = 1  
    end
  }
