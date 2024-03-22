return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "c", "cpp", "lua", "python", "sql", "java", "javascript", "html", "css", "go", "json" },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
