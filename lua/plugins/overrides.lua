-- these are simple overrides
-- complicated ones are in saparate files
return {
    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000",
        },
    },
    {
        "akinsho/bufferline.nvim",
        keys = {
            { "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Move to the previous tab" },
            { "<S-l>", "<Cmd>BufferLineCycleNext<CR>", desc = "Move to the next tab" },
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
}
