return {
    {
        "neovim/nvim-lspconfig",
        init = function()
            require("lazyvim.util").on_attach(function(_, buffer)
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
                jsonls = {},
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
            setup = {
                clangd = function(_, opts)
                    opts.capabilities.offsetEncoding = { "utf-16" }
                end,
            },
        },
    },
}
