-- Default autocmds that come with lazyvim.nvim are disabled.
-- Below is person settings.

local function augroup(name)
    return vim.api.nvim_create_augroup("autocmds" .. name, { clear = true })
end

-- solve the tab jumping to unfinished snip locations
vim.api.nvim_create_autocmd("ModeChanged", {
    pattern = "*",
    callback = function()
        if
            ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
            and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
            and not require("luasnip").session.jump_active
        then
            require("luasnip").unlink_current()
        end
    end,
})
-- goto last loc when opening a buffer
-- vim.api.nvim_create_autocmd("BufReadPost", {
-- 	group = augroup("last_loc"),
-- 	callback = function()
-- 		local mark = vim.api.nvim_buf_get_mark(0, '"')
-- 		local lcount = vim.api.nvim_buf_line_count(0)
-- 		if mark[1] > 0 and mark[1] <= lcount then
-- 			pcall(vim.api.nvim_win_set_cursor, 0, mark)
-- 		end
-- 	end,
-- })

-- close some filetypes with <q>
-- vim.api.nvim_create_autocmd("FileType", {
--     group = augroup("close_with_q"),
--     pattern = {
--         "PlenaryTestPopup",
--         "help",
--         "lspinfo",
--         "man",
--         "notify",
--         "qf",
--         "query", -- :InspectTree
--         "spectre_panel",
--         "startuptime",
--         "tsplayground",
--     },
--     callback = function(event)
--         vim.bo[event.buf].buflisted = false
--         vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
--     end,
-- })
-- wrap and check for spell in text filetypes

-- vim.api.nvim_create_autocmd("FileType", {
--     group = augroup("wrap_spell"),
--     pattern = { "gitcommit", "markdown" },
--     callback = function()
--         vim.opt_local.wrap = true
--         vim.opt_local.spell = true
--     end,
-- })
