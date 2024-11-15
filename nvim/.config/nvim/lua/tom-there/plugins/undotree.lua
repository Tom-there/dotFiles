return {
  "mbbill/undotree",
  config = function()
    vim.g.undotree_WindowLayout = 2
    vim.g.undotree_ShortIndicators = 1
  end,
  keys = {
    {
      "<leader>u",
      "<cmd>UndotreeToggle<CR>",
      desc = "Open Undotree",
    },
  },
}
