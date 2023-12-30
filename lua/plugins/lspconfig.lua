return {
    {
        "neovim/nvim-lspconfig",
        init = function()
            require("lazyvim.util").lsp.on_attach(function(_, buffer)
                vim.keymap.set("n", "<space>f", function()
                    vim.lsp.buf.format({ async = true })
                end, { desc = "Format Document", buffer = buffer })
            end)
        end,
        opts = {
            inlay_hints = {
                enabled = true,
            },
            servers = {
                bashls = {},
                lua_ls = {
                    settings = {
                        Lua = {
                            hint = {
                                enable = true,
                            },
                        },
                    },
                },
                clangd = {
                    keys = {
                        {

                            "<space>o",
                            "<Cmd>ClangdSwitchSourceHeader<CR>",
                            desc = "Switch to Source/Header",
                        },
                    },
                },
            },
            -- this is done via lazyvim.plugins.extra.lang.clangd
            -- setup = {
            --     clangd = function(_, opts)
            --         opts.capabilities.offsetEncoding = { "utf-16" }
            --     end,
            -- },
        },
    },
    -- disable clangd_extensions
    -- {
    --     "p00f/clangd_extensions.nvim",
    --     enabled = false,
    -- },
}
