vim.pack.add({
	{ src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/3rd/image.nvim" },
})

local neotree = require('neo-tree')
local neotree_commands = require('neo-tree.command')

neotree.setup({
	close_if_last_window = true,
	event_handlers = {
		event = "file_open_requested",
		handler = function()
			neotree_commands.execute({ action = "close" })
		end
	}
})


vim.keymap.set('n', '<leader>e', function()
	neotree_commands.execute({
		toggle = true,
		position = "right",
		dir = vim.uv.cwd(),
	})
end)
