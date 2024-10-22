return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			event_handlers = {
				{
					event = "file_open_requested",
					handler = function()
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})
	end,
	keys = {
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({
					toggle = true,
					position = "right",
					dir = vim.uv.cwd(),
				})
			end,
			desc = "open neotree",
		},
	},
}
