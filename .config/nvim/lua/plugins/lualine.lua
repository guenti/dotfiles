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
				--section_separators = { left = " ", right = " " },
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						"branch",
						icon = "",
					},
					"diff",
					{
						"diagnostics",
						symbols = {
							error = icons.diagnostics.Error,
							warn = icons.diagnostics.Warn,
							info = icons.diagnostics.Info,
							hint = icons.diagnostics.Hint,
						},
					},
				},
				lualine_c = {
					{
						"filename",
						path = 0,
						symbols = {
							modified = "  ",
							readonly = "  ",
							unnamed = "",
						},
					},
				},
				lualine_x = {
					{
						"fileformat",
						symbols = {
							unix = "",
							dos = "",
							mac = "",
						},
					},
					require("pomodoro").statusline,
				},
				lualine_y = { "encoding", "filetype" },
				lualine_z = { "%l:%c", "%p%%/%L" },
			},
			inactive_sections = {
				--lualine_c = { "%f %y %m" },
				lualine_x = {},
			},
		}
	end,
}
