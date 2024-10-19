local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")
local null_ls = require("null-ls")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup()

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "java_language_server",
    "rust_analyzer"
  },
})

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
  },
})

-- Language specific config --
lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
lspconfig.java_language_server.setup({
  capabilities = capabilities,
})
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
})

-- LSP KEYBINDS --
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "cd", vim.lsp.buf.definition)
vim.keymap.set("n", "cD", vim.lsp.buf.declaration)
vim.keymap.set("n", "ci", vim.lsp.buf.implementation)
vim.keymap.set("n", "cr", vim.lsp.buf.references)
vim.keymap.set("n", "cR", vim.lsp.buf.rename)

vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)
