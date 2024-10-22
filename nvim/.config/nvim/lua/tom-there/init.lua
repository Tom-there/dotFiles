require("tom-there.sets")
require("tom-there.keymap")
require("lazy").setup({
	{ import = "tom-there.plugins" },
}, {
	install = {
		colorscheme = { "catppuccin" },
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
