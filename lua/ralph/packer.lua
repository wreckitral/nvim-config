-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- Tokyonigth colorscheme
    use ('folke/tokyonight.nvim')

    -- Error diagnostic
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })
    
    -- Treesitter
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    use("nvim-treesitter/playground")
    use("nvim-treesitter/nvim-treesitter-context")

    -- Harpoon
    use("theprimeagen/harpoon")

    -- Undotree
    use("mbbill/undotree")

    -- Fugitive
    use("tpope/vim-fugitive")

    -- Status bar lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Dashboard
    use("nvimdev/dashboard-nvim")

    -- Tab bar
    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'
    
    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'rafamadriz/friendly-snippets'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
        }
    }
end)
