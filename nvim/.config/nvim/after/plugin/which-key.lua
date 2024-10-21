require("which-key").setup({
  opts = {},
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
})

--require("which-key").keys({
--  "<leader>?",
--  function()
--    require("which-key").show({ global = false })
--  end,
--  desc = "Buffer Local Keymaps (which-key)",
--})

--require("which-key").add({})
