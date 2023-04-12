return {
	"rcarriga/nvim-notify",
	-- required because gruvbox is configured with a transparent bg
	config = function()
		require("notify").setup({
			background_colour = "#1d2021",
		})
	end,
}
