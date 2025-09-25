vim.pack.add({
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
})

local telescope_builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files)
vim.keymap.set('n', '<leader>fg', telescope_builtin.git_files)
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers)
vim.keymap.set('n', '<leader>fs', function()
	telescope_builtin.grep_string(
		{ search = vim.fn.input("Telescope grep > ") }
	)
end)
