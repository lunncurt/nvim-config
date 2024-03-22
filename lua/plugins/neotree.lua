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
				vim.keymap.set('n', "<leader>nt", ":Neotree filesystem reveal left<CR>")
				vim.keymap.set('n', "<leader>nc", ":Neotree filesystem close<CR>")
        require("neo-tree").setup({
            close_if_last_window = true,
            enable_git_status = true,
            enable_diagnostics = true,
            hijack_netrw_behavior = "open_default",
            window = {
              position = "left",
              width = 30,
            },
            follow_current_file = {
              enabled = true,
              leave_dirs_open = true,
            },
            update_focused_file = {
              enable = true,
            },
            buffers = {
              follow_current_file = {
                enabled = true,
                leave_dirs_open = false,
              }
            },
        })
			end
	}
}


