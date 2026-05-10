return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- Requires a Nerd Font to be installed
    },
    config = function()
        -- Optionally enable 24-bit color
        vim.opt.termguicolors = true

        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 40,
                relativenumber = true,
                side = "right"
            },
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false, -- Set to true to hide dotfiles by default
            },
            git = {
                enable = true,
                ignore = false,
                timeout = 500,
            },
        })
    end,
    keys = {
        -- Map <leader>e to toggle the tree
        { "<leader>pv", "<cmd>NvimTreeToggle<CR>", desc = "Toggle File Explorer" },
        -- Map <leader>f to find the current file in the tree
        { "<leader>f", "<cmd>NvimTreeFindFileToggle<CR>", desc = "Find File in Explorer" },
    }
}
