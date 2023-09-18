-- bootstrap lazy.nvim, LazyVim and your plugins

-- lua/config/options should have this, but
-- this is to remove warning of setting
-- leader key before l
vim.g.mapleader = ";"

package.loaded["lazyvim.config.options"] = true
require("config.lazy")
