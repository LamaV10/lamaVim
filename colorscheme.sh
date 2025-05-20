# script which is used to setup up the music.py file with your desiered music directory

echo "tokyonight (1) or gruvbox (2)?"
read scheme

cd lua/plugins/ 

if [ ! -f /colorscheme.lua ]; then
    touch colorscheme.lua
fi

if [ $scheme -eq 1 ]; then
echo 'return {
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
}' > colorscheme.lua

elif [ $scheme -eq 2 ]; then
echo 'return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    contrast = "hard",
  },
  config = function(_, opts)
    require("gruvbox").setup(opts)
    vim.cmd.colorscheme("gruvbox")
  end,
}' > colorscheme.lua
fi
