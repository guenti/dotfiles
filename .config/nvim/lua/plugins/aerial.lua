return {
	"stevearc/aerial.nvim",
	config = function()
		local aerial = require("aerial")
		aerial.setup({
			backends = { "treesitter", "lsp", "markdown", "man" },
			-- optionally use on_attach to set keymaps when aerial has attached to a buffer
			on_attach = function(bufnr)
				-- Jump forwards/backwards with '{' and '}'
				local tstext_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
				local anext, aprev = tstext_repeat_move.make_repeatable_move_pair(aerial.next, aerial.prev)
				vim.keymap.set("n", "[r", aprev, { buffer = bufnr, desc = "Aerial prev" })
				vim.keymap.set("n", "]r", anext, { buffer = bufnr, desc = "Aerial next" })
			end,
		})
		-- You probably also want to set a keymap to toggle aerial
		vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>", { desc = "Aerial toggle" })
	end,
}
