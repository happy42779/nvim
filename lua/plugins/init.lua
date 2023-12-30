-- these are extra plugins that are
-- not included in lazyvim
return {
    {
        "LazyVim/LazyVim",
        opts = function(_, opts)
            opts.colorscheme = "catppuccin"
            -- disable default settings
            opts.defaults = {
                autocmds = false,
                keymaps = false,
            }
        end,
    },
    { "tpope/vim-repeat", event = "VeryLazy" },
    { "tpope/vim-surround", event = "VeryLazy" },
    { "numToStr/Comment.nvim", config = true },

    -- disables
    -- { "nvim-lualine/lualine.nvim", enabled = false },
}
