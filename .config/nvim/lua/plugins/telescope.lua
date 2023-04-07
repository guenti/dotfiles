return {
	{
		"nvim-lua/plenary.nvim",
		lazy = true,
	},
	{
		"nvim-telescope/telescope.nvim",
		keys = function()
			return {
				{ "<Leader>ff", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find Files" },
				{ "<Leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Files" },
				{ "<Leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
				{ "<Leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Helptags" },
			}
		end,
		opts = {
			defaults = {
				file_ignore_patterns = { ".git" },
			},
		},
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},
}
