return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}
		-- Define button actions with icons
		dashboard.section.buttons.val = {
			dashboard.button("e", " New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("f", " Find Files", ":Telescope find_files <CR>"),
			dashboard.button("o", " Recent Files", "<cmd>Telescope oldfiles<cr>"),
			dashboard.button("t", " Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", " Neovim config", "<cmd>e ~/.config/nvim/ | cd %:p:h<cr>"),
			dashboard.button("l", "󰒲 Lazy", "<cmd>Lazy<cr>"),
			dashboard.button("q", " Quit NVIM", ":qa<CR>"),
		}
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[
            autocmd FileType alpha setlocal nofoldenable
        ]])
	end,
}
