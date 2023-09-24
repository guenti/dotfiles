return {
	"christoomey/vim-tmux-navigator",
	lazy = false,
	keys = function()
		return {
			{ "C-h", "<cmd> TmuxNavigateLeft<cr>", "window left" },
			{ "C-l", "<cmd> TmuxNavigateRight<cr>", "window right" },
			{ "C-j", "<cmd> TmuxNavigateDown<cr>", "window down" },
			{ "C-k", "<cmd> TmuxNavigateUp<cr>", "window up" },
		}
	end,
}, {
	"aserowy/tmux.nvim",
	config = function()
		require("tmux").setup({
			copy_sync = {
				enable = true,
				sync_clipboard = false,
				sync_registers = true,
			},
			resize = {
				enable_default_keybindings = false,
			},
		})
	end,
}
