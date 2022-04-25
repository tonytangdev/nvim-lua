vim.api.nvim_set_keymap(
	'n',
	'ff',
	':lua require("telescope.builtin").find_files()<CR>',
	{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
	'n',
	'fb',
	':Telescope buffers<CR>',
	{noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
        'n',
        'fl',
        ':Telescope live_grep<CR>',
        {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
        'n',
        'fs',
        ':lua require("telescope.builtin").grep_string()<CR>',
        {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
        'n',
        'fo',
        ':Telescope treesitter<CR>',
        {noremap = true, silent = true}
)
