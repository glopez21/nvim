return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
          auto_install = true,
        },
     },

     {
        'mrcjkb/rustaceanvim',
        version = '^5', -- Recommended
        lazy = false, -- This plugin is already lazy
        ft = "rust",
        config = function ()
          local mason_registry = require('mason-registry')
          -- local codelldb = mason_registry.get_package("codelldb")
          local extension_path = codelldb:get_install_path() .. "/extension/"
          -- local codelldb_path = extension_path .. "adapter/codelldb"
          local liblldb_path = extension_path.. "lldb/lib/liblldb.dylib"
          local cfg = require('rustaceanvim.config')
    
          vim.g.rustaceanvim = {
            dap = {
              adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
            },
          }
        end
      },
    
      {
        'rust-lang/rust.vim',
        ft = "rust",
        init = function ()
          vim.g.rustfmt_autosave = 1
        end
      },
    
      {
        'mfussenegger/nvim-dap',
        config = function()
                local dap, dapui = require("dap"), require("dapui")
          dap.listeners.before.attach.dapui_config = function()
            dapui.open()
          end
          
          dap.listeners.before.launch.dapui_config = function()
            dapui.open()
          end
          
          dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
          end
          
          dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
          end
            end,
      },
    
      {
        'rcarriga/nvim-dap-ui', 
        dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
        config = function()
                require("dapui").setup()
            end,
      },
    
      {
        'saecki/crates.nvim',
        ft = {"toml"},
        config = function()
          require("crates").setup {
            completion = {
              cmp = {
                enabled = true
              },
            },
          }
          require('cmp').setup.buffer({
            sources = { { name = "crates" }}
          })
        end
    },
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {},
      -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
      -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
      dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  }
}


