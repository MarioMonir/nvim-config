-- This file can be loaded by calling `lua require('plugins')` 
-- from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Plenary Packageke
  use { 'nvim-lua/plenary.nvim'}

  -- Telescope Package
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.1' }

  -- Colorscheme Theme github-nvim-theme  
  use ({ 'projekt0n/github-nvim-theme', tag = 'v0.0.7' })
  -- use { 'morhetz/gruvbox'}

  -- Treesiter package
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Treesitter Playground 
  use { 'nvim-treesitter/playground' }

  -- Nerdtree File Manager 
  use { 'preservim/nerdtree' }

  -- Undotree undo history 
  use { 'mbbill/undotree' }

  --  Git package 
  -- use { 'tpope/vim-fugitive' }

  --  Comments package 
  use { 'tpope/vim-commentary' }

  -- Auto Pair
  use { 'jiangmiao/auto-pairs' }

  -- Start Page
  use { 'mhinz/vim-startify' }

  -- Syntax and Formatting
  use { 'neovim/nvim-lspconfig' }
  use { 'jose-elias-alvarez/null-ls.nvim' }
  use { 'MunifTanjim/prettier.nvim' }


  -- LSP 
  use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v1.x',
	requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }

  -- Diagnostic
  use { 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim' }

end)
