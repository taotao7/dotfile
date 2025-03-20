---@type LazySpec
return {

	-- customize alpha options
	{
		"goolord/alpha-nvim",
		opts = function(_, opts)
			-- customize the dashboard header
			opts.section.header.val = {
				" ████████╗ █████╗  ██████╗       ███████╗",
				" ╚══██╔══╝██╔══██╗██╔═══██╗      ██╔════╝",
				"    ██║   ███████║██║   ██║█████╗███████╗",
				"    ██║   ██╔══██║██║   ██║╚════╝╚════██║",
				"    ██║   ██║  ██║╚██████╔╝      ███████║",
				"    ╚═╝   ╚═╝  ╚═╝ ╚═════╝       ╚══════╝",
			}
			return opts
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		enabled = false,
	},
	-- {
	-- 	"loctvl842/monokai-pro.nvim",
	-- 	config = function()
	-- 		require("monokai-pro").setup({
	-- 			filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
	-- 		})
	-- 	end,
	-- },
}
