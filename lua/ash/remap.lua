vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({ "n", "i", "c", "x" }, "<C-C>", "<Esc>")
vim.keymap.set({ "n", "i", "c", "x" }, "<C-z>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

-- tabs navigation
vim.keymap.set("n", "<leader>n", ":tabnew<CR>")
vim.keymap.set("n", "<leader>.", ":tabnext<CR>")
vim.keymap.set("n", "<leader>,", ":tabprevious<CR>")
vim.keymap.set("n", "<C-X><C-X>", ":tabc<CR>")
vim.keymap.set({ 'i', 'c' }, "<C-X><C-X>", "<Esc>:tabc<CR>")

-- move while in insertmode
vim.keymap.set({ "i", "c" }, "<C-h>", "<Left>")
vim.keymap.set({ "i", "c" }, "<C-j>", "<Down>")
vim.keymap.set({ "i", "c" }, "<C-k>", "<Up>")
vim.keymap.set({ "i", "c" }, "<C-l>", "<Right>")
vim.keymap.set({ "i", "c" }, "<C-b>", "<C-Left>")
vim.keymap.set({ "i", "c" }, "<C-e>", "<C-o>e<Right>")
vim.keymap.set({ "i", "c" }, "<C-S>", "<C-O>:update<CR>")

-- move through windows
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

-- resize windows with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- move lines up and down
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>")
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>")

-- move multiple lines
vim.keymap.set("x", "<J>", ":move '>+1<CR>gv")
vim.keymap.set("x", "<K>", ":move '<-2<CR>gv")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv")

-- tab multiple files
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- focus on search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- reformat without lsp
vim.keymap.set("n", "<leader>mm", "mmggVG='m")

-- reformat using lsp
vim.keymap.set("n", "<leader>rf", function()
    vim.lsp.buf.format()
end)

-- delete word and paste
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>o", "\"+p")
vim.keymap.set("n", "<leader>O", "\"+P")

-- yank to clipboard
vim.keymap.set({ "n", "v", "x" }, "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- delete word without yanking
vim.keymap.set({ "n", "v", "x" }, "<leader>d", "\"_d")

-- tree-sitter
vim.keymap.set("n", "<C-f>", "<cmd>NvimTreeFindFileToggle<CR>")
vim.keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")

