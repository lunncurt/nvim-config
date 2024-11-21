return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
    })
    vim.keymap.set("n", "bn", ":BufferLineCycleNext<CR>")
    vim.keymap.set("n", "bp", ":BufferLineCyclePrev<CR>")
  end,
}
