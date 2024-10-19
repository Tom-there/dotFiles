local lspconfig = require('lspconfig')

require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'java_language_server'
  }
})


-- Language specific config --
lspconfig.lua_ls.setup{}
lspconfig.java_language_server.setup{}

-- LSP KEYBINDS --
  vim.keymap.set('n', 'K',  vim.lsp.buf.hover)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
