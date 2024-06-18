-- This file can be loaded by calling `lua require("plugins")` from your init.vim
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    -- or                            , branch = "0.1.x",
    requires = { { "nvim-lua/plenary.nvim" } }
  }
  use("NLKNguyen/papercolor-theme")
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use("nvim-treesitter/playground")
  use("ThePrimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }
  use('saadparwaiz1/cmp_luasnip')
  use("nvim-tree/nvim-tree.lua")
  use("nvim-tree/nvim-web-devicons")
  use("lukas-reineke/indent-blankline.nvim")
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  }
  use("tamton-aquib/staline.nvim")
  use("norcalli/nvim-colorizer.lua")
  use("lewis6991/gitsigns.nvim")
  use { 'codota/tabnine-nvim', run = "./dl_binaries.sh" }
end)
