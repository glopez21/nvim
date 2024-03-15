return {
    "kdheepak/lazygit.nvim",
    config = function()
        require("lazy").setup({
            {
                "kdheepak/lazygit.nvim",
                cmd = {
                    "LazyGit",
                    "LazyGitConfig",
                    "LazyGitCurrentFile",
                    "LazyGitFilter",
                    "LazyGitFilterCurrentFile",
                },
                -- optional for floating window border decoration
                dependencies = {
                    "nvim-lua/plenary.nvim",
                },
            },
        })

        vim.keymap.set("n", "<leader>gg", "<Cmd>LazyGit<CR>", {})
        

    end,
}


-- Reference: https://github.com/kdheepak/lazygit.nvim