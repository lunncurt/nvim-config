return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_x = { "encoding", { "fileformat", symbols = { unix = "archbtw" } }, "filetype" },
			},
			options = {
				theme = "gruvbox-material",
        section_separators = '',
        component_separators = '|',
			},
		})
	end,
}
