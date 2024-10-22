return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	dependencies = {
		"echasnovski/mini.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 200
	end,
	opts = {},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
