require('gitsigns').setup()

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<CR>")
vim.keymap.set("n", "<leader>gp", ":Gitsigns prev_hunk<CR>")
vim.keymap.set("n", "<leader>gl", ":Gitsigns toggle_linehl<CR>")
