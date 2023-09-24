local installed = {
	"python",
	"yaml",
	"vim",
	"lua",
	"c",
	"cpp",
	"cmake",
	"rust",
	"html",
	"javascript",
	"tsx",
	"bash",
	"json",
	"markdown",
	"markdown_inline",
	"regex",
	"dockerfile",
	"graphql",
	"llvm",
	"toml",
	"gitcommit",
	"git_rebase",
	"gitattributes",
}

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = installed,
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_hightlighting = false,
		},
		indent = {
			enable = true,
		},
		rainbow = {
			enable = true,
			-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
			extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
			max_file_lines = nil, -- Do not enable for files with more than n lines, int
			-- colors = {}, -- table of hex strings
			-- termcolors = {} -- table of colour name strings
		},
	},
}
