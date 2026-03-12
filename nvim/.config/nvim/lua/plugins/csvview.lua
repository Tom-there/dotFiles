vim.pack.add({
	{ src = "https://github.com/hat0uma/csvview.nvim"}
})

local csvview = require('csvview')

csvview.setup({
	parser = {
		comments = {
			"#",
			"//"
		}
	}
})

vim.api.nvim_create_autocmd('FileType', {
	pattern = 'csv',
	callback = function()
		vim.cmd('CsvViewEnable display_mode=border herder_lnum=1')
	end,
})
