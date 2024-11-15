return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
    })
    require("telescope").load_extension("ui-select")
  end,
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files({})
      end,
      desc = "find files (telescope)",
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").git_files({})
      end,
      desc = "find files in current repo (telescope)",
    },
    {
      "<leader>fs",
      function()
        require("telescope.builtin").grep_string({
          search = vim.fn.input("Telescope grep > "),
        })
      end,
      desc = "find content of files (telescope)",
    },
  },
}
