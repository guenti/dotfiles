return {
	"smjonas/inc-rename.nvim",
	keys = {
		{
			"<space>pr",
			function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end,
			expr = true,
			desc = "LSP (R)ename",
		},
	},
	config = function()
		require("inc_rename").setup()
	end,
}
