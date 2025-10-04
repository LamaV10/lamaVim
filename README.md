# Neovim Config 
![theme-comparison](https://github.com/LamaV10/lamaVim/blob/main/Pictures/theme-comparison.png)
![ccp.png](https://github.com/LamaV10/lamaVim/blob/main/Pictures/ccp.png)
![telescope](https://github.com/LamaV10/lamaVim/blob/main/Pictures/telescope.png)


## Install 
Either install it via the install.sh script:
```
wget https://raw.githubusercontent.com/LamaV10/lamaVim/refs/heads/main/install.sh && chmod +x install.sh && ./install.sh && rm install.sh
```
Or you can just do it manually like shown in the example!
```
# copys old nvim config into your homedirectory
mv ~/.config/nvim/ ~/
# makes nvim directory
mkdir ~/.config/nvim
# clones the repo
git clone https://github.com/LamaV10/lamaVim ~/.config/nvim
```
## Plugins 

| Packagemanager | Coding       | Themes     |    LSPs     |
| -------------- | ------------ | ---------- | ----------- |
| Lazy           | mini.nvim    | tokyonight |  ccls       |
|                | line-numbers | gruvbox    |  jdtls      |
|                | treesitter   |            |  pylsp      |
|                | blink-cmp    |            |  rust       |
|                | telescope    |            |  htmx       |
|                | autoclose    |            |             |
|                | nvim-tree    |            |             |
|                | toggleterm   |            |             |
|                | nvim-lsp     |            |             |
|                | bufferline   |            |             |
|                | which-key    |            |             |
|                | startup      |            |             |


## Help
### Pylsp 
Install pylsp into a virutal envoirment...
```
python -m venv ~/.venv/nvim
source ~/.venv/nvim/bin/activate
pip install 'python-lsp-server[all]'
```
then you can modify the path in ~/.config/nvim/lua/plugins/lsp.lua:
```
vim.lsp.config('pylsp', {
   cmd = { "/home/USERNAME/.venv/nvim/bin/pylsp" },
})
```
