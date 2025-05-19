return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night", -- or "storm", "moon"
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
    end,
}

-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 1000,
--   lazy = false,
--   opts = {
--     contrast = "hard",
--   },
--   config = function(_, opts)
--     require("gruvbox").setup(opts)
--     vim.cmd.colorscheme("gruvbox")
--   end,
-- }
