return {
	{
		"nvim-lua/plenary.nvim",
		lazy = true,
	},
	{
		"nvim-telescope/telescope.nvim",
		keys = function()
			return {
				{
					"<Leader>ff",
					"<cmd>Telescope find_files hidden=true<cr>",
					desc = "Find Files",
				},
				{
					"<Leader>fg",
					"<cmd>Telescope live_grep<cr>",
					desc = "Find in Files with grep",
				},
				-- find open buffers
				{
					"<Leader>fo",
					"<cmd>Telescope buffers<cr>",
					desc = "Find Buffers",
				},
				{
					"<Leader>fh",
					"<cmd>Telescope help_tags<cr>",
					desc = "Find Helptags",
				},
				-- open projects picker
				{
					"<Leader>fp",
					"<cmd>Telescope project<cr>",
					desc = "Open Projects",
					{ noremap = true, silent = true },
				},
				-- File browser
				{
					"<Leader>fb",
					"<cmd>Telescope file_browser<cr>",
					desc = "File Browser",
					{ noremap = true, silent = true },
				},
				-- open File browser with the path of the current buffer
				{
					"<Leader>fc",
					"<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
					desc = "Open File Browser for current buffer",
					{ noremap = true, silent = true },
				},
			}
		end,
		opts = {
			defaults = {
				file_ignore_patterns = { ".git", "!.gitignore" },
			},
			extensions = {
				project = {
					base_dirs = {
						"~/Projects",
					},
					hidden_files = true, -- default: false
					theme = "dropdown",
					order_by = "asc",
					sync_with_nvim_tree = true, -- default false
				},
				file_browser = {
					-- theme = "ivy",
					hijack_netrw = true,
					hidden = true,
				},
			},
		},
	},
	-- Telescope addons
	{
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("telescope").load_extension("project")
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		config = function()
			require("telescope").load_extension("fzf")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").load_extension("file_browser")
		end,
	},
	{ "kiyoon/telescope-insert-path.nvim" },
}
