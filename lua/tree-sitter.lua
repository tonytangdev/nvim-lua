require'nvim-treesitter.configs'.setup {

	ensure_installed = { "javascript", "typescript", "jsdoc", "css", "dot", "dockerfile", "python", "json", "jsonc", "lua", "tsx", "yaml", "bash", "html" },

	sync_install = false,

	highlight = {
		enable = true
	}
}
