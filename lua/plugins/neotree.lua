return{
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		config = function()
				vim.keymap.set('n', "<leader>nt", ":Neotree filesystem reveal right<CR>")
				vim.keymap.set('n', "<leader>nc", ":Neotree filesystem close<CR>")
        require("neo-tree").setup({
            close_if_last_window = true,
            hijack_netrw_behavior = "open_default",
            window = {
              position = "left",
              width = 30,
            },
            follow_current_file = {
              enabled = true,
              leave_dirs_open = false,
            },
            update_focused_file = {
              enable = true,
            }
        })
			end
	}
}


