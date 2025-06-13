# STARSHIP
echo "Instalando starship..." 
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

if [ -z "$XDG_DATA_HOME" ]; then
    FONT_DIR="$HOME/.local/share/fonts"
else
    FONT_DIR="$XDG_DATA_HOME/fonts"
fi

echo "Diretório de fontes usando XDG: $FONT_DIR"
mkdir -p "$FONT_DIR"
cp -r fonts/* "$FONT_DIR/"

# ... (código para copiar as fontes) ...
echo "Atualizando o cache de fontes..."
fc-cache -fv
