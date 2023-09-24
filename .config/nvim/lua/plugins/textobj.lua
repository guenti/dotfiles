return {
	"kana/vim-textobj-user",
	event = "VeryLazy",
},
{
	"kana/vim-textobj-entire",
	event = "VeryLazy",
	dependencies = { "kana/vim-textobj-user" },
}, -- vie, vae to select entire buffer (file)
{
	"kana/vim-textobj-fold",
	event = "VeryLazy",
	dependencies = { "kana/vim-textobj-user" },
}, -- viz, vaz to select fold
{
	"glts/vim-textobj-comment",
	event = "VeryLazy",
	dependencies = { "kana/vim-textobj-user" },
} -- vic, vac
