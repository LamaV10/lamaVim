return {
  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    config = function()
    end,
  },

  -- TokyoNight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
}
