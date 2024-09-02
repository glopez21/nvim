return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    -- {
    --     'williamboman/mason-lspconfig.nvim',
    --     config = function()
    --         require("mason-lspconfig").setup({
    --             ensure_installed = { "lua_ls", "pyright", "bashls", "powershell_es", "clangd", "rust_analyzer", "zls"}
    --         })
    --     end
    -- },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
          auto_install = true,
        },

    -- {
    --     -- References:
    --     -- https://github.com/neovim/nvim-lspconfig

    --     'neovim/nvim-lspconfig',
    --     config = function()
    --         local lspconfig = require('lspconfig')
    --         -- lspconfig.hls.setup({})
    --         -- lspconfig.golangci_lint_ls.setup{}
    --         lspconfig.lua_ls.setup({})
    --         lspconfig.pyright.setup({})
    --         lspconfig.bashls.setup({})
    --         lspconfig.powershell_es.setup({})
    --         lspconfig.clangd.setup({})
    --         lspconfig.zls.setup({})
    --         lspconfig.rust_analyzer.setup({ 
    --             -- Server-specific settings. See `:help lspconfig-setup`
    --         settings = {
    --           ['rust-analyzer'] = {},
    --         },
    --       })
            


    --         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    --         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    --         vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    --     end
    -- }
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
    
          local lspconfig = require("lspconfig")
          lspconfig.tsserver.setup({
            capabilites = capabilities,
          })
          lspconfig.html.setup({
            capabilites = capabilities,
          })
          lspconfig.lua_ls.setup({
            capabilites = capabilities,
          })
    
          vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
          vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
          vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
      },
  },
}


