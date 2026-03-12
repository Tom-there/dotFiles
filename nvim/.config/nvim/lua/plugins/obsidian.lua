vim.pack.add({
	{ src = "https://github.com/epwalsh/obsidian.nvim"},
	{ src = "https://github.com/nvim-lua/plenary.nvim"},
	{ src = "https://github.com/hrsh7th/nvim-cmp"},
	{ src = "https://github.com/nvim-telescope/telescope.nvim"}
})

local obsidian = require('obsidian')

obsidian.setup({
	workspaces = {

	}
})
