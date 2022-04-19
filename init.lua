require('theme')
require('lsp')

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
end)
