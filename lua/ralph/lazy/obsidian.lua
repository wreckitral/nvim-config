return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        workspaces = {
            {
                name = "personal",
                path = "~/exocortex",
            },
        },
        templates = {
            folder = "Templates"
        },

        follow_url_func = function(url)
            vim.fn.jobstart({ "xdg-open", url })
        end, -- Remove extra `vim.ui.open(url)` as `xdg-open` should handle opening the URL.
    },
}
