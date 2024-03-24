return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "clangd", "marksman", "ruff_lsp", "lua_ls", },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.ruff_lsp.setup({
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) --go to declaration
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) --go to definition
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) --shows info
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) --shows code actions for file
		end,
	},
}
