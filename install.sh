# STARSHIP
curl -sS https://starship.rs/install.sh | sh
ln config/starship.toml ~/.config/
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# NVIM
sudo apt install nodejs
sudo apt install ripgrep
sudo apt install lua
ln -s $(pwd)/config/nvim ~/.config/

# KITTY
ln -s $(pwd)/config/kitty ~/.config/

# FONTS
#cp fonts/*ttf ~/.local/lib/share/fonts/
