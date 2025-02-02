return {
    {
        "nvim-telescope/telescope.nvim",
	    dependencies = { "plenary" },

	    config = function()
		    require("telescope").setup({})

		    local builtin = require("telescope.builtin")
		    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		    vim.keymap.set("n", "<leader>ps", function()
			    builtin.grep_string({ search = vim.fn.input("Grep > ") })
		    end)
		    vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
	    end,
        },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function ()
            require("telescope").setup({
              extensions = {
                ["ui-select"] = {
                  require("telescope.themes").get_dropdown {
                  }
                }
              }
            })
            require("telescope").load_extension("ui-select")
         end
    }
}
