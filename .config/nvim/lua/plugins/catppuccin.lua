return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "mocha",
			transparent_background = true,
			styles = {
				comments = { "italic" },
				conditionals = { "italic" },
				loops = {},
				functions = {},
				keywords = { "bold" },
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
			},
			integrations = {
				gitsigns = true,
				nvimtree = true,
				telescope = true,
				notify = true,
				bufferline = true,
				mason = true,
				which_key = true,
			},
		},
	},
	-- Configure LazyVim to load catppuccin
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
