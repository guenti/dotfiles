return {
	"neovim/nvim-lspconfig",
	---@class PluginLspOpts
	opts = {
		---@type lspconfig.options
		servers = {
			-- pyright and clangd will be automatically installed with mason and loaded with lspconfig
			pyright = {},
			clangd = {},
		},
		setup = {
			clangd = function(_, opts)
				opts.capabilities.offsetEncoding = { "utf-16" }
			end,
		},
	},
}
