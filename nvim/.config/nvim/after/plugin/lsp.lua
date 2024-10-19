local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local null_ls = require("null-ls")

require("mason").setup()

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "java_language_server",
  },
})

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
  },
})

-- Language specific config --
lspconfig.lua_ls.setup({})
lspconfig.java_language_server.setup({})

-- LSP KEYBINDS --
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "cd", vim.lsp.buf.definition)
vim.keymap.set("n", "cD", vim.lsp.buf.declaration)
vim.keymap.set("n", "ci", vim.lsp.buf.implementation)

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)
