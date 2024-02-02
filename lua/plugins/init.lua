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
            timeout = 5000,
        },
    },
    {
        "folke/noice.nvim",
        opts = function(_, opts)
            table.insert(opts.routes, {
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = { skip = true },
            })
            opts.presets.command_palette = false
            opts.presets.inc_rename = false
            opts.presets.lsp_doc_border = true
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        keys = {
            { "<leader>cp", false },
            {
                "<leader>mp",
                ft = "markdown",
                "<Cmd>MarkdownPreviewToggle<CR>",
                desc = "Toggle Markdown Preview",
            },
        },
    },
    -- {
    --     "stevearc/conform.nvim",
    --     -- keys = {
    --     -- 	{
    --     -- 		"<leader>cf",
    --     -- 		function()
    --     -- 			require("conform").format({ formatters = { "injected" } })
    --     -- 		end,
    --     -- 		mode = { "n", "v" },
    --     -- 		desc = "Format Injected Langs",
    --     -- 	}
    --     -- },
    --     opts = {
    --         formatters_by_ft = {
    --             markdown = { "deno_fmt" },
    --         },
    --     },
    -- },

    {
        "LazyVim/LazyVim",
        opts = function(_, opts)
            -- opts.colorscheme = "catppuccin"
            opts.colorscheme = "solarized-osaka"
            -- disable default settings
            opts.defaults = {
                -- autocmds = false,
                -- keymaps = false,
            }
        end,
    },
}
