return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local servers = { "clangd", "sqlls", "pylsp", "lua_ls", "omnisharp", "marksman" }

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
				severity_sort = true,
				float = {
					border = "rounded",
					source = "if_many",
				},
			})

			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			vim.lsp.config("clangd", {
				init_options = {
					fallbackFlags = { "-std=c++20" },
				},
			})

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim", "opts" },
						},
					},
				},
			})

			local lsp_augroup = vim.api.nvim_create_augroup("CurtLspKeymaps", { clear = true })
			vim.api.nvim_create_autocmd("LspAttach", {
				group = lsp_augroup,
				callback = function(event)
					local opts = { buffer = event.buf }
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- go to definition
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show symbol info
					vim.keymap.set("n", "gl", vim.diagnostic.open_float, opts) -- show diagnostics at cursor
					vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- previous diagnostic
					vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- next diagnostic
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- code actions
				end,
			})

			vim.api.nvim_create_autocmd("CursorHold", {
				group = lsp_augroup,
				callback = function()
					local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })
					if #diagnostics == 0 then
						return
					end

					vim.diagnostic.open_float(nil, {
						focusable = false,
						scope = "cursor",
						close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
					})
				end,
			})

			for _, server in ipairs(servers) do
				vim.lsp.enable(server)
			end
		end,
	},
}
