return {
	"rcarriga/nvim-notify",
	-- required because the color scheme is configured with a transparent bg
	config = function()
		require("notify").setup({
			background_colour = "#1d2021",
		})
	end,
}
