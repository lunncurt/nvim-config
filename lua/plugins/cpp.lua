return {
	{
		"Civitasv/cmake-tools.nvim",
		dependencies = { "stevearc/overseer.nvim", "akinsho/toggleterm.nvim" },
		config = function()
			require("cmake-tools").setup({})
		end,
	},
  {
    "p00f/clangd_extensions.nvim",
    config = function()
      require("clangd_extensions").setup()
    end,
  },
}
