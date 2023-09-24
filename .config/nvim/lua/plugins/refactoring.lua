return {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-treesitter/nvim-treesitter" },
	},
	keys = {
		{
			"<space>re",
			[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
			mode = "v",
			noremap = true,
			silent = true,
			expr = false,
			desc = "[R]efactor: [E]xtract function",
		},
		{
			"<space>rf",
			[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
			mode = "v",
			noremap = true,
			silent = true,
			expr = false,
			desc = "[R]efactor: Extract function to [F]ile",
		},
		{
			"<space>rv",
			[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
			mode = "v",
			noremap = true,
			silent = true,
			expr = false,
			desc = "[R]efactor: Extract [V]ariable",
		},
		{
			"<space>ri",
			[[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
			mode = { "n", "v" },
			noremap = true,
			silent = true,
			expr = false,
			desc = "[R]efactor: [I]nline variable",
		},
		{
			"<space>rb",
			[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Block')<CR>]],
			mode = "n",
			noremap = true,
			silent = true,
			expr = false,
			desc = "[R]efactor: Extract [B]lock",
		},
		{
			"<space>rbf",
			[[ <Esc><Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]],
			mode = "n",
			noremap = true,
			silent = true,
			expr = false,
			desc = "[R]efactor: Extract [B]lock to [F]ile",
		},
	},
	init = function()
		local status, wk = pcall(require, "which-key")
		if status then
			wk.register({
				["<space>r"] = { name = "[R]efactor" },
			})
		end
	end,
	config = function()
		require("refactoring").setup()
	end,
}
