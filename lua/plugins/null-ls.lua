return {
    "jose-elias-alvarez/null-ls.nvim",
    enabled = true,
    opts = function(_, opts)
        local nls = require("null-ls")
        opts.sources = {
            nls.builtins.formatting.stylua,
            nls.builtins.diagnostics.codespell,
        }
    end,
}
