if [ -d "$~/.config/nvim" ]; then
    mkdir ~/Nvim-Backup
    echo "Move old conifg into ~/.config/nvim/Backup"
    mv ~/.config/nvim ~/Nvim-Backup
fi

echo "Install config!"
git clone https://github.com/LamaV10/lamaVim ~/.config/nvim
echo "Done! Open nvim to see the changes!"
