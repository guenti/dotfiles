return {
	"neovim/nvim-lspconfig",
	---@class PluginLspOpts
	opts = {
		---@type lspconfig.options
		servers = {
			-- These will be automatically installed with mason and loaded with lspconfig
			pyright = {},
			salt_ls = {},
			clangd = {},
			jdtls = {},
		},
	},
}
