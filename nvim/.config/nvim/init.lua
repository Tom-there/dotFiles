require('core')
require('colors')

require('lsp')
require('neotree')
require('telescope')

require('autopairs')
require('bufferline')

vim.pack.add({
	{ src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/folke/todo-comments.nvim" },
	{ src = "https://github.com/mbbill/undotree" },
	--dependencies
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/3rd/image.nvim" },
})




