vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.laststatus = 2
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.smarttab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.showcmd = true
vim.opt.hidden = true
-- set mouse to "a" to enable.
-- set mouse to "" to disable.
vim.opt.mouse = ""
