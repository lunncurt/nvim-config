return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		config = function()
			vim.g.barbar_auto_setup = false

			-- Move to previous/next
			vim.keymap.set("n", "≤", ":BufferPrevious<CR>") --Alt ,
			vim.keymap.set("n", "≥", ":BufferNext<CR>") --Alt .
			-- Close buffer
			vim.keymap.set("n", "ç", ":BufferClose<CR>") --Alt c
			-- Wipeout buffer
			--                 :BufferWipeout
			-- Close commands
			--                 :BufferCloseAllButCurrent
			--                 :BufferCloseAllButPinned
			--                 :BufferCloseAllButCurrentOrPinned
			--                 :BufferCloseBuffersLeft
			--                 :BufferCloseBuffersRight
			-- Magic buffer-picking mode
			vim.keymap.set("n", "<C-p>", ":BufferPick<CR>")
			-- Sort automatically by...
			vim.keymap.set("n", "<Space>bb", ":BufferOrderByBufferNumber<CR>")
			vim.keymap.set("n", "<Space>bd", ":BufferOrderByDirectory<CR>")
			vim.keymap.set("n", "<Space>bl", ":BufferOrderByLanguage<CR>")
			vim.keymap.set("n", "<Space>bw", ":BufferOrderByWindowNumber<CR>")
		end,
	},
}
