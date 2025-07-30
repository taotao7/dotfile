return {
	"taotao7/monokai-pro.nvim",
	lazy = true,
	opts = {
		terminal_colors = true,
		devicons = true, -- highlight the icons of `nvim-web-devicons`
		filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum | sun
		day_night = {
			enable = true, -- turn off by default
			day_filter = "sun", -- classic | octagon | pro | machine | ristretto | spectrum | sun
			night_filter = "pro", -- classic | octagon | pro | machine | ristretto | spectrum | sun
		},
		plugins = {
			indent_blankline = {
				context_highlight = "pro", -- default | pro
				context_start_underline = false,
			},
		},
		overrideScheme = function(cs, p, config, hp)
			-- Create more natural status line colors for sun filter
			if config.filter == "sun" then
				-- Use panel color for softer background
				cs.statusBar.background = p.background
				-- Use dimmed1 for better readability
				cs.statusBar.foreground = p.dimmed1
				-- Use accent3 (warm amber) for active elements
				cs.statusBar.activeForeground = p.accent3
			end
			return cs
		end,
	},
}
