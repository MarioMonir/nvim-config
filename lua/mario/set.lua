-- Colorscheme, Colors & Column
vim.cmd.colorscheme("github_dark_default")
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.background = "dark"
vim.api.nvim_set_hl(0,"Normal",{ bg = "none" })
vim.api.nvim_set_hl(0,"SignColumn",{ bg = "none" })
-- Scroll Off 
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- Search Path 
vim.opt.path = "**"

-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false

-- Clipboard
-- Copy paste between vim and everything else
vim.opt.clipboard = "unnamedplus"

-- Cursor
-- vim.opt.guicursor = ""

-- Line numbers & relative 
vim.opt.nu = true
vim.opt.relativenumber = true

-- Swap and Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Fast Update 
vim.opt.updatetime = 50

-- Use Mouse
vim.opt.mouse = "a"
