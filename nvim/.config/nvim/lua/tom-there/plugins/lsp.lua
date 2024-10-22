return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
    end,
    keys = {
      {
        "K",
        vim.lsp.buf.hover,
        desc = "Hover information (LSP)",
      },
      {
        "cd",
        vim.lsp.buf.definition,
        desc = "Go to definition (LSP)",
      },
      {
        "cD",
        vim.lsp.buf.declaration,
        desc = "Go to declaration (LSP)",
      },
      {
        "ci",
        vim.lsp.buf.implementation,
        desc = "Go to implementation (LSP)",
      },
      {
        "<leader>ca",
        vim.lsp.buf.code_action,
        desc = "Code Action (LSP)",
      },
    },
  },
}
