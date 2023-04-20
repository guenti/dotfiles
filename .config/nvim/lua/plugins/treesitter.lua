return {
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = "all",
		auto_install = true,
		ignore_install = { "help", "swift", "wgsl", "wgsl_beavy", "smali" },
		highlight = {
			enable = true,
			additional_vim_regex_hightlighting = false,
		},
		indent = {
			enable = true,
		},
	},
}
