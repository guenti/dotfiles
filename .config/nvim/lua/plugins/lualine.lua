local icons = require("lazyvim.config").icons

return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = function()
		return {
			options = {
				theme = "gruvbox",
				disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha", "neo-tree" } },
				component_separators = "",
				section_separators = { right = "", left = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						"branch",
						icon = "",
					},
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
					},
				},
				lualine_c = {
					"encoding",
					{ "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
					{
						"filename",
						path = 1,
						symbols = {
							modified = " ",
							readonly = " ",
							new = " ",
							unnamed = " ",
						},
					},
				},
				lualine_x = {
					{
						"diagnostics",
						symbols = {
							error = icons.diagnostics.Error,
							warn = icons.diagnostics.Warn,
							info = icons.diagnostics.Info,
							hint = icons.diagnostics.Hint,
						},
					},
					{
						"fileformat",
						symbols = {
							unix = " ",
							dos = " ",
							mac = " ",
						},
					},
				},
				lualine_y = {
					require("pomodoro").statusline,
				},
				lualine_z = { "%l:%c", "%p%%/%L" },
			},
			inactive_sections = {
				--lualine_c = { "%f %y %m" },
				lualine_x = {},
			},
		}
	end,
}
