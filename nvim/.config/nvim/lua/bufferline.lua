vim.pack.add({
	{ src = "https://github.com/akinsho/bufferline.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})


vim.keymap.set('n', 'L', ":BufferLineCycleNext<CR>")
vim.keymap.set('n', 'H', ":BufferLineCyclePrev<CR>")
vim.keymap.set('n', '<leader>bd', ":bd<CR>")
vim.keymap.set('n', '<leader>bD', ":bd!<CR>")
