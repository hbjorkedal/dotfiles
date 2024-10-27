return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night",
			terminal_colors = true,
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		})
		vim.cmd("colorscheme tokyonight")
	end,
}
