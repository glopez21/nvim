return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    
}

-- Reference: https://github.com/nvimdev/dashboard-nvim