return {
	"lervag/vimtex",
	init = function()
		vim.g["vimtex_view_method"] = "zathura"
	end,
	keys = {
		{
			"<leader>vc",
			":VimtexCompile",
			desc = "Start/Stop tex compiler (vimtex)",
		},
	},
}
