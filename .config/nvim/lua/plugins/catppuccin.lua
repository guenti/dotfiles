return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "frappe",
			background = {
				dark = "frappe",
			},
			transparent_background = true,
		},
	},
	-- Configure LazyVim to load catppuccin
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin-frappe",
		},
	},
}
