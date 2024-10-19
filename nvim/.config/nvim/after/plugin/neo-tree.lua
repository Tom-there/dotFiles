require("neo-tree").setup({
  event_handlers = {
    {
      event = "file_open_requested",
      handler = function()
        vim.cmd("Neotree close")
      end,
    },
  },
})

vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle right<CR>")

require("window-picker").setup({
  filter_rules = {
    include_current_win = false,
    autoselect_one = true,
    bo = {
      filetype = {
        "neo-tree",
        "neo-tree-popup",
        "notify",
      },
      buftype = {
        "terminal",
        "quickfix",
      },
    },
  },
})
