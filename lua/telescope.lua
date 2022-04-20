vim.api.nvim_set_keymap(
	'n',
	'<leader>f',
	':lua require("telescope.builtin").find_files()<CR>',
	{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
	'n',
	'<leader>b',
	':Telescope buffers<CR>',
	{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
        'n',
        '<leader><C-f>',
        ':Telescope live_grep<CR>',
        {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
        'n',
        '<leader>c',
        ':lua require("telescope.builtin").grep_string()<CR>',
        {noremap = true, silent = true}
)
