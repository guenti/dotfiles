return {
	"danymat/neogen",
	dependencies = "nvim-treesitter/nvim-treesitter",
	config = true,
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
	init = function()
		local opts = { noremap = true, silent = true }
		vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)
		vim.api.nvim_set_keymap("n", "<Leader>nc", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
	end,
}
