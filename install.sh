# STARSHIP
echo "Instalando starship..." 
curl -sS https://starship.rs/install.sh | sh
ln config/starship.toml ~/.config/
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# NVIM
echo "==== INSTALANDO NODEJS"
sudo apt install nodejs

echo "==== INSTALANDO RIPGREP"
sudo apt install ripgrep

echo "==== INSTALANDO LUA"
sudo apt install lua

echo "==== COPIANDO ARQUIVOS DO NEOVIM"
ln -s $(pwd)/config/nvim ~/.config/

echo "COPIANDO ARQUIVOS DO KITTY" 

# KITTY
ln -s $(pwd)/config/kitty ~/.config/


# VPN Mobits
ln -s $(pwd)/config/vpnmobits ~/.local/bin/
sudo pacman -S openvpn
chmod +x ~/.local/bin/vpnmobits

# Pergunta se deseja instalar um item
read -p "Deseja copiar os arquivos do Panel Colorizer (KDE)? (s/n) " resposta
# Converte a resposta para minúsculas para facilitar a comparação
resposta=${resposta,,}

# Verifica a resposta
if [[ "$resposta" =~ ^(s|sim|y|yes)$ ]]; then
    echo "Copiando Panel Colorizer"
    ln -s $(pwd)/config/panel-colorizer ~/.config/
fi

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
