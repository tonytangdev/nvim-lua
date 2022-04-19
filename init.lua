require('theme')

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
return require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Packer can manage itself
	use 'bluz71/vim-nightfly-guicolors' -- Theme
end)
