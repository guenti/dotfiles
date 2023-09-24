return {
	{
		"L3MON4D3/LuaSnip",
		build = (not jit.os:find("Windows"))
				and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
			or nil,
		dependencies = {
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").load({ paths = { "./my-snippets/flask-snippets" } })
				--- Don't use the lazy_load() function if you want,i.e., assign snippets to other filetypes.
				--- The Lazy Loader is running after Luasnip is loaded and that's the issue here.
				--- See: https://github.com/rafamadriz/friendly-snippets/issues/282
				require("luasnip.loaders.from_vscode").load()
				require("luasnip").filetype_extend("all", { "license" })
			end,
		},
	},
}
