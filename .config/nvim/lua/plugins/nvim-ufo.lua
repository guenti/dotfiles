return {
	"kevinhwang91/nvim-ufo",
	dependencies = "kevinhwang91/promise-async",
	init = function()
		vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
		-- vim.o.fillchars = [[foldopen:,foldclose:]]
		vim.o.foldcolumn = "auto:1" -- '0' is not bad
		vim.o.foldminlines = 25
		vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
	end,
	config = function()
		require("ufo").setup({
			fold_virt_text_handler = handler,
			provider_selector = function(bufnr, filetype, buftype)
				return { "treesitter", "indent" }
			end,
		})
	end,
}
