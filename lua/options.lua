vim.cmd([[
set encoding=utf-8
set notimeout
set listchars=tab:>\ ,trail:.
" set listchars=tab:\ ,trail:.

set foldmethod=syntax

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
]])

local set = vim.opt
local g = vim.g

set.encoding="utf-8"
set.number = true
set.relativenumber = true
set.cmdheight=1
set.laststatus=2
set.showtabline=2
set.signcolumn="yes"
set.updatetime=300
set.splitright = true
set.splitbelow = true
set.smarttab = true
set.autoindent = true
set.shiftwidth = 2
set.tabstop = 2
set.smartindent = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = true
set.incsearch = true
set.showmatch = true
set.cursorline = true
set.cursorcolumn = true
set.showcmd = true
set.hidden = true
set.mouse="a"
set.undofile = true
-- set.scrolloff = 8
-- set.sidescrolloff = 8
set.list = true

-- vim.api.nvim_create_autocmd({'CursorHold','CursorHoldI'},
	-- {
		-- callback = function ()
			-- vim.lsp.buf.document_highlight()
		-- end
	-- }
-- )
-- --
-- vim.api.nvim_create_autocmd({'CursorMoved'},
	-- {
		-- callback = function ()
			-- vim.lsp.buf.clear_references()
		-- end
	-- }
-- )
