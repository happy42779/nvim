return {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = false,
    keys = {
        {
            "<leader>lg",
            function()
                local terminal = require("toggleterm.terminal").Terminal
                local lazygit = terminal:new({ cmd = "lazygit", direction = "float", hidden = true })
                lazygit:toggle()
            end,
            desc = "Toggle lazygit",
            noremap = true,
            silent = true,
        },
    },
    opts = function(_, default_opts)
        default_opts.direction = "float"
        default_opts.open_mapping = [[<C-\>]]
        -- some keymaps to move between windows
        function _G.set_terminal_keymaps()
            local opts = { buffer = 0 }
            -- vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
            -- vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
            vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
            vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
            vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
            vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
            -- vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
        end

        -- if you only want these mappings for toggle term use term://*toggleterm#* instead
        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
    end,
}
