local lspconfig = require('lspconfig')

require('mason').setup()

require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
  }
})


-- Language specific config --
lspconfig.lua_ls.setup{
}
  vim.keymap.set('n', 'K', vim.lsp.buf.hover)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
--  vim.keymap.set('n', 'gi', vim.lsp.buf.implemetation)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
