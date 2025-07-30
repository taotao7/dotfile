return {
	"taotao7/monokai-pro.nvim",
	lazy = true,
	opts = {
		terminal_colors = true,
		devicons = true,     -- highlight the icons of `nvim-web-devicons`
		filter = "pro",      -- classic | octagon | pro | machine | ristretto | spectrum | sun
		day_night = {
			enable = true,     -- turn off by default
			day_filter = "sun", -- classic | octagon | pro | machine | ristretto | spectrum | sun
			night_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum | sun
		},
		plugins = {
			indent_blankline = {
				context_highlight = "pro", -- default | pro
				context_start_underline = false,
			},
		},
	},
}
