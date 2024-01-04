-- these are extra plugins that are
-- not included in lazyvim
return {
    { "tpope/vim-repeat", event = "VeryLazy" },
    { "tpope/vim-surround", event = "VeryLazy" },
    { "numToStr/Comment.nvim", config = true },

    -- setting themes
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            transparent = true,
        },
    },
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000",
        },
    },
    {
        "folke/noice.nvim",
        opts = {
            presets = {
                command_palette = false,
                inc_rename = false,
            },
        },
    },

    {
        "LazyVim/LazyVim",
        opts = function(_, opts)
            -- opts.colorscheme = "catppuccin"
            opts.colorscheme = "solarized-osaka"
            -- disable default settings
            opts.defaults = {
                autocmds = false,
                keymaps = false,
            }
        end,
    },
}
