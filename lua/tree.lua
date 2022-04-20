require'nvim-tree'.setup {
}

vim.api.nvim_set_keymap(
	'n',
	'<C-B>',
	':NvimTreeToggle<CR>',
	{noremap = true, silent = true}
)
