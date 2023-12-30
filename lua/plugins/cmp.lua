return {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
        -- recipe
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")
        local lsnip = require("luasnip")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        opts.mapping = vim.tbl_extend("force", opts.mapping, {
            ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
            ["<ESC>"] = cmp.mapping.close(),
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                elseif lsnip.expand_or_locally_jumpable() then
                    lsnip.expand_or_jump()
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif lsnip.jumpable(-1) then
                    lsnip.jump(-1)
                else
                    fallback()
                end
            end, { "i", "s" }),
        })
        opts.enabled = function()
            local buftype = vim.api.nvim_buf_get_option(0, "buftype")
            if buftype == "prompt" then
                return false
            end
            local context = require("cmp.config.context")
            return not context.in_treesitter_capture("comment") and not context.in_syntax_group("comment")
        end
        opts.sorting = {
            comparators = {
                cmp.config.compare.exact,
            },
        }
    end,
}
