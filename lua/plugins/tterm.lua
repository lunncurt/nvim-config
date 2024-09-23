return {
	{
		{
			"akinsho/toggleterm.nvim",
			config = function()
				require("toggleterm").setup({
					direction = "float",
					vim.keymap.set("n", "<leader>tt", ":ToggleTerm<CR>"),
          vim.keymap.set("t", "<C-c>", "<C-\\><C-n><C-w>", {silent = true})
				})
			end,
		},
	},
}
