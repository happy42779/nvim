return {
    {
        "LazyVim/LazyVim",
        -- dependencies = {
        --     "catppuccin",
        -- },
        opts = function(_, opts)
            opts.colorscheme = "catppuccin"
            -- disable default settings
            opts.defaults = {
                autocmds = false,
                keymaps = false,
            }
            -- vim.api.nvim_set_hl(0, "LineNr", { fg = "white" })
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = function(_, opts)
            opts.transparent_background = true
            opts.flavour = "macchiato"
            opts.highlight_overrides = {
                macchiato = function(macchiato)
                    return {
                        LineNr = { fg = "white" },
                    }
                end,
            }
        end,
    },
}
