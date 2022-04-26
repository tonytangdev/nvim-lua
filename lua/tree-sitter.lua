require'nvim-treesitter.configs'.setup {

	ensure_installed = { "javascript", "typescript", "jsdoc", "css", "dot", "dockerfile", "python", "json", "jsonc", "lua", "tsx", "yaml", "bash", "html" },

	sync_install = false,

	highlight = {
		enable = true
	},

	rainbow = {
		enable = true,
		colors = { 
		    "#cc241d", 
		    "#a89984", 
		    "#b16286", 
		    "#d79921", 
		    "#689d6a", 
		    "#d65d0e", 
		    "#458588", 
		}, 
		termcolors = { 
		    "Red", 
		    "Green", 
		    "Yellow", 
		    "Blue", 
		    "Magenta", 
		    "Cyan", 
		    "White", 
		}
	}
}
