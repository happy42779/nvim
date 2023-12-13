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
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = function(_, opts)
            opts.transparent_background = true
            -- opts.flavour = "latte"
            opts.flavour = "macchiato"
            opts.highlight_overrides = {
                macchiato = function(macchiato)
                    return {
                        LineNr = { fg = "white" },
                        Visual = { fg = "#212529" },
                    }
                end,
            }
        end,
    },
}
