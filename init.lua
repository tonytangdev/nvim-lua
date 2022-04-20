vim.g.mapleader = " "
require('theme')
require('lsp')
require('code-completion')
require('tree-sitter')
require('telescope')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Packer can manage itself
	use 'bluz71/vim-nightfly-guicolors' -- Theme
	
	-- LSP for code completion, snippets, etc
	use "neovim/nvim-lspconfig"
	use "jose-elias-alvarez/null-ls.nvim"
	use "jose-elias-alvarez/nvim-lsp-ts-utils"
	use "nvim-lua/plenary.nvim"

	-- code completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- Code highlighting
	use {
        	'nvim-treesitter/nvim-treesitter',
        	run = ':TSUpdate'
    	}

	-- Fuzzy finder
	use {
  		'nvim-telescope/telescope.nvim',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
end)
