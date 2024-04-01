return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			local config = require("ibl")
			config.setup({
				scope = { enabled = true },
			})
		end,
	},
}
