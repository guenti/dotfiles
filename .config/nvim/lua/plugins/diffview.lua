return {
	"sindrets/diffview.nvim",
	keys = {
		{ "<leader>dv", ":DiffviewOpen<CR>" },
		{ "<leader>dc", ":DiffviewClose<CR>" },
		{ "<leader>dq", ":DiffviewClose<CR>:q<CR>" },
	},
	cmd = { "DiffviewOpen", "DiffviewClose" },
}
