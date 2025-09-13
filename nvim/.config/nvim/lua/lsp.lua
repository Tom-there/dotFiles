vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" }
})

vim.lsp.enable({
	"lua_ls",
	"rust_analyzer"
})

vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>cd', vim.lsp.buf.definition)

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(e)
		local client = vim.lsp.get_client_by_id(e.data.client_id)
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, e.buf, { autotrigger = true })
		end
	end
})
vim.cmd("set completeopt+=noselect")
