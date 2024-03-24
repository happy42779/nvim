return {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    config = function()
        local ftMap = {
            vim = "indent",
            python = "indent",
            git = "",
        }
        require("ufo").setup({
            open_fold_hl_timeout = 150,
            close_fold_kinds_for_ft = {
                default = { "imports", "comment" },
                json = { "array" },
                -- c = { "comment", "region" },
                c = { "comment" },
            },
            preview = {
                win_config = {
                    border = { "", "─", "", "", "", "─", "", "" },
                    winhighlight = "Normal:Folded",
                    winblend = 0,
                },
                mappings = {
                    scrollU = "<C-u>",
                    scrollD = "<C-d>",
                    jumpTop = "[",
                    jumpBot = "]",
                },
            },
            provider_selector = function(bufnr, filetype, buftype)
                -- if you prefer treesitter provider rather than lsp,
                -- return ftMap[filetype] or {'treesitter', 'indent'}
                return ftMap[filetype], { "treesitter", "indent" }

                -- refer to ./doc/example.lua for detail
            end,
        })
    end,
}
