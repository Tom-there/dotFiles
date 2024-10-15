return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 999,
  config = function()
    require("catppuccin").setup{
      flavour = "mocha",
      term_colors = true,
      transparent_background = false,
      no_italic = false,
      no_bold = false,
    }
  end,
}
