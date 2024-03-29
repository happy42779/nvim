-- Default autocmds that come with lazyvim.nvim are disabled.
-- Below is personal settings.

vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.cursorline = true

-- vim.opt.clipboard = "unnamedplus" -- sync with system clipboard
vim.opt.confirm = true

vim.opt.formatoptions = "jcrqlnt"

vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"

vim.opt.showmode = false
vim.opt.mouse = "a"
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.encoding = "UTF-8"
vim.opt.langmenu = "en_US.UTF-8"
vim.opt.spelllang = { "en_us" }
-- vim.opt.language message = "zh_CN.UTF-8"
vim.opt.fileencodings = "ucs-bom,utf-8,cp936,gb18030,big5"
-- using ftplugin
vim.opt.filetype = "plugin"

vim.opt.incsearch = true
-- vim.opt.hlsearch = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.undofile = true

vim.opt.updatetime = 50

-- whitespaces / indents
-- vim.opt.list = true
-- vim.opt.listchars:append("eol:↴")
-- vim.opt.listchars:append("space:⋅")
--

-- split to right and below
vim.opt.splitright = true
vim.opt.splitbelow = true
--
vim.opt.termguicolors = true

-- folding
-- vim.opt.foldmethod = "expr"

vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true

-- disabling lsp client log
-- vim.lsp.set_log_level("debug")
vim.lsp.set_log_level("off")
