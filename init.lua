vim.g.mapleader = " "
require('general')
require('theme')
require('lsp')
require('code-completion')
require('tree-sitter')
require('telescope')
require('tree')
require('git')
require('auto-pairs')
require('indents')
require ('comments')

vim.cmd([[
  set number
  set cursorline
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
	use {
		'p00f/nvim-ts-rainbow'
	}

	-- Fuzzy finder
	use {
  		'nvim-telescope/telescope.nvim',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- File Explorer
	use {
    		'kyazdani42/nvim-tree.lua',
    		requires = {
    	  		'kyazdani42/nvim-web-devicons', -- optional, for file icon
    		}
	}

	-- Git
	use {
  		'lewis6991/gitsigns.nvim',
  		-- tag = 'release' -- To use the latest release
	}

	-- Autopairs brackets
	use 'windwp/nvim-autopairs'

	-- Indent guides
	use 'lukas-reineke/indent-blankline.nvim'
	
	-- Comments
	use 'numToStr/Comment.nvim'

end)
