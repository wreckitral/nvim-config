require("ralph.set")
require("ralph.remap")
require("ralph.lazy_init")

vim.cmd[[colorscheme tokyonight]]

-- create autocmd group
local augroup = vim.api.nvim_create_augroup
local RalphGroup = augroup('Ralph', {})

-- create autocmd group
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

-- reload plenary
function R(name)
    require("plenary.reload").reload_module(name)
end

-- auto highlight text after yoink
autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

-- delete blank line at the end of a file
autocmd({"BufWritePre"}, {
    group = RalphGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- file browser clean look
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
