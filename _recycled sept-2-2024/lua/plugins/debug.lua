return {
    "mfussenegger/nvim-dap", 
        dependencies = {
            "rcarriga/nvim-dap-ui", 
            "leoluz/nvim-dap-go",
            "mfussenegger/nvim-dap-python"
        },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require("dapui").setup()
        require("dap-go").setup()
        require("dap-python").setup()

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

        vim.keymap.set('n', '<F5>', dap.continue, {})
        vim.keymap.set('n', '<F10>', dap.step_over, {})
        vim.keymap.set('n', '<F11>', dap.step_into, {})
        vim.keymap.set('n', '<F12>', dap.step_out, {})
        vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
        vim.keymap.set('n', '<Leader>B', dap.set_breakpoint, {})
    end,
}

-- References:
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#ccrust-via-gdb
-- https://github.com/rcarriga/nvim-dap-ui