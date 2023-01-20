local opts = { noremap = true, silent = true }
-- local term_opts = { silent = true }
local buf_opts = { noremap = true, silent = true, buffer=bufnr }

local keymap = vim.api.nvim_set_keymap

local buf_keymap = vim.api.nvim_buf_set_keymap

function Bufmap(mode, shortcut, command)
	vim.keymap.set(mode,shortcut,command, buf_opts)
end

function Mmap(mode, shortcut, command)
	vim.keymap.set(mode,shortcut,command, opts)
end

function GotoNextError()
	vim.diagnostic.goto_next({
		severity = vim.diagnostic.severity.ERROR,
	})
end

function GotoPrevError()
	vim.diagnostic.goto_prev({
		severity = vim.diagnostic.severity.ERROR,
	})
end


-- Remap space as leader key
Mmap("","Space>","<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- 	normal_mode = "n"
-- 	insert_mode = "i"
-- 	visual_mode = "v"
-- 	visual_block_mode = "x"
-- 	term_mode = "t"
-- 	command_mode = "c"

-- common key maps --
Mmap("n","<leader>v",":e $MYVIMRC<CR>")
Mmap({"n","i","c","x"},"<C-C>","<Esc>")
Mmap("n","<C-D>","M<C-D>")
Mmap("n","<C-U>","M<C-U>")

-- move through tabs
Mmap("n","<leader>n",":tabnew<CR>")
Mmap("n","<C-S>",":tabnext<CR>")
Mmap("n","<C-A>",":tabprevious<CR>")
Mmap("i","<C-A>","<Esc>:tabprevious<CR>")
Mmap("c","<C-A>","<C-C>:tabprevious<CR>")
Mmap("n","<C-X><C-X>",":tabc<CR>")
Mmap({'i','c'},"<C-X><C-X>","<Esc>:tabc<CR>")

-- move while in insertmode
Mmap({"i","c"},"<C-h>","<Left>")
Mmap({"i","c"},"<C-j>","<Down>")
Mmap({"i","c"},"<C-k>","<Up>")
Mmap({"i","c"},"<C-l>","<Right>")

-- move through windows
Mmap("n","<C-h>",":wincmd h<CR>")
Mmap("n","<C-j>",":wincmd j<CR>")
Mmap("n","<C-k>",":wincmd k<CR>")
Mmap("n","<C-l>",":wincmd l<CR>")

-- clear full buffer
Mmap("n","<leader>lh",":bufdo bd<CR>")

-- move through words
-- Mmap("i","<C-w>","<C-Right>")
Mmap("i","<C-b>","<C-Left>")
Mmap("i","<C-e>","<C-o>e<Right>")

Mmap("i","<C-S>","<C-O>:update<CR>")

-- resize windows with arrows
Mmap("n","<C-Up>",":resize -2<CR>")
Mmap("n","<C-Down>",":resize +2<CR>")
Mmap("n","<C-Left>",":vertical resize -2<CR>")
Mmap("n","<C-Right>",":vertical resize +2<CR>")

-- move lines up and down
Mmap("n","<A-j>","<Esc>:m .+1<CR>")
Mmap("n","<A-k>","<Esc>:m .-2<CR>")

-- move multiple lines
Mmap("x","<J>",":move '>+1<CR>gv")
Mmap("x","<K>",":move '<-2<CR>gv")
Mmap("x","<A-j>",":move '>+1<CR>gv")
Mmap("x","<A-k>",":move '<-2<CR>gv")

-- tab multiple files
Mmap("v","<","<gv")
Mmap("v",">",">gv")

--LSP config
Mmap('n', '<leader>gl', vim.diagnostic.open_float)
Mmap('n', '<leader>D', GotoPrevError )
Mmap('n', '<leader>d', GotoNextError )
Mmap('n', '<leader>q', vim.diagnostic.setloclist)
--
Mmap('n', 'K', vim.lsp.buf.hover)
Mmap('n','<leader>gD',vim.lsp.buf.declaration)
Mmap('n','<leader>gd',vim.lsp.buf.definition)
Mmap('n','<leader>gi',vim.lsp.buf.implementation)
Mmap('n','<leader>gr',vim.lsp.buf.references)
Mmap('n','<leader>aw',vim.lsp.buf.code_action)
Mmap('n','<leader>rn',vim.lsp.buf.rename)
Mmap('n','<leader>gs',vim.lsp.buf.signature_help)

--------------------------------
-- PLUGINS --
--------------------------------

-- nerdTree shorcut
-- mmap("n","<C-n>",":NERDTree<CR>")
-- mmap("n","<C-n>",":NERDTreeFocus<CR>")
Mmap("n","<C-n>",":NERDTreeToggle<CR>")
Mmap("n","<C-f>",":NERDTreeFind<CR>")

-- fzf keymaps
Mmap("n","<leader>f","<cmd>Telescope find_files<CR>")
Mmap("n","<leader>gg","<cmd>Telescope live_grep<CR>")
Mmap("n","<leader><leader>","<cmd>Telescope git_files<CR>")
Mmap("n","<leader>b","<cmd>Telescope buffers<CR>")

-- Airline
-- toggle whitespace
Mmap("n","<F10>",":AirlineToggleWhitespace<CR>")

-- luasnip
-- shorcut to source my luasnips file again, which will reload my snippets
vim.keymap.set("n", "<leader>s", "<cmd>source ~/.config/nvim/lua/luasnip_config.lua<CR>")
