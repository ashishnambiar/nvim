
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function ()
			return require("packer.util").float {border = "rounded"}
		end,
	},
}

return packer.startup(function (use)
-- Nerdtree is for folder structure
use 'preservim/nerdtree'
-- fugitive is for git related operations
use 'tpope/vim-fugitive'

-- Below are themeing related plugins, for text coloring,
-- status and tabbar colors
use 'morhetz/gruvbox'
use 'nanotech/jellybeans.vim'
use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'
-- Icons to show up in nerdtree and status bar
use 'ryanoasis/vim-devicons'
-- Telescope Plugins
use 'nvim-lua/plenary.nvim'
use 'nvim-telescope/telescope.nvim'

-- below are the plugins for lsp, auto completion and syntax highlighting
use 'dart-lang/dart-vim-plugin'
use 'williamboman/nvim-lsp-installer'
use 'neovim/nvim-lspconfig'
-- nvim-cmp
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-nvim-lua'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
-- lspkind for completion popup
use 'onsails/lspkind.nvim'

-- Luasnip stuff
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'

-- TreeSitter for treesitter stuff
use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
-- use 'nvim-treesitter/playground'

-- toggle terminal
use 'akinsho/toggleterm.nvim'

-- GitSigns
use 'lewis6991/gitsigns.nvim'

use 'numToStr/Comment.nvim'

end
)
