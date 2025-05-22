if [ ! -d "$~/.config/nvim" ]; then
    mkdir ~/.config/nvim
    echo "Config directory has been made!"
fi

cd ~/.config/nvim
mkdir Backup
echo "Move old conifg into ~/.config/nvim/Backup"
mv ~/.config/nvim ~/.config/nvim/Backup
echo "Install config!"
git clone https://github.com/LamaV10/lamaVim ~/.config/nvim
echo "Done! Open nvim to see the changes!"
