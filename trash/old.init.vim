""""""""""""""set up for Vundle to install plugins"""""""""""""""""
 "        set rtp+=~/.vim/bundle/Vundle.vim
 "        
 "        call vundle#begin()
 "        
 "        " Vundle Plugin Manager
 "        Plugin 'VundleVim/Vundle.vim'
 "        " Nerdtree is for folder structure
 "        Plugin 'preservim/nerdtree'
 "        " fugitive is for git related operations
 "        Plugin 'tpope/vim-fugitive'
 "        " Below are themeing related plugins, for text coloring,
 "        " status and tabbar colors
 "        Plugin 'morhetz/gruvbox'
 "        Plugin 'vim-airline/vim-airline'
 "        Plugin 'vim-airline/vim-airline-themes'
 "        " Icons to show up in nerdtree and status bar
 "        Plugin 'ryanoasis/vim-devicons'
 "        " Telescope Plugins
 "        Plugin 'nvim-lua/plenary.nvim'
 "        Plugin 'nvim-telescope/telescope.nvim'
 "        
 "        " below are the plugins for lsp, auto completion and syntax highlighting
 "        Plugin 'dart-lang/dart-vim-plugin'
 "        Plugin 'williamboman/nvim-lsp-installer'
 "        Plugin 'neovim/nvim-lspconfig'
 "        " nvim-cmp
 "        Plugin 'hrsh7th/cmp-nvim-lsp'
 "        Plugin 'hrsh7th/cmp-nvim-lua'
 "        Plugin 'hrsh7th/cmp-buffer'
 "        Plugin 'hrsh7th/cmp-path'
 "        Plugin 'hrsh7th/cmp-cmdline'
 "        Plugin 'hrsh7th/nvim-cmp'
 "        " lspkind for completion popup
 "        Plugin 'onsails/lspkind.nvim'
 "        
 "        " Luasnip stuff
 "        Plugin 'L3MON4D3/LuaSnip'
 "        Plugin 'saadparwaiz1/cmp_luasnip'
 "        
 "        " TreeSitter for treesitter stuff
 "        Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
 "        " Plugin 'nvim-treesitter/playground'
 "        
 "        call vundle#end()
 "        
lua <<EOF
require('init')
EOF
