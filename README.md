# Minhas configurações do Linux

## Programas

- Kitty
- git
- Neovim
- Hyprland
- Waybar
- Hyprpaper
- Rofi

Arch Linux:

```Bash
sudo pacman -S kitty git neovim hyprland waybar hyprpaper rofi
```

## Configurações

### Arch Linux

Atualizar o sistema:

```Bash
sudo pacman -Syu
```

Instalar algumas fontes

```Bash
sudo pacman -S ttf-font-awesome ttf-dejavu noto-fonts noto-fonts-emoji ttf-liberation
```

Instalando os portais, que são os dialogs que aparecem quando preciso de um
arquivo. Aqui estamos instalando o portal [XDG Desktop Portal Hyprland](https://wiki.hypr.land/hyprland-wiki/pages/Useful-Utilities/Hyprland-desktop-portal/).

```Bash
pacman -S xdg-desktop-portal-hyprland
```

Algumas configurações extras no Pacman a serem feitas no arquivo /etc/pacman.conf

- Aumentar o número de downloads simultâneos
- Habilitar a configuração de cores

Na seção __Misc options__, desmarcar as opções:
- Color (para deixar o pacman colorido)
- ParallelDownloads = 5

Adicionar _ILoveCandy_, para deixar a saída do pacman animada.

### Hyprland

Adicionar as linhas abaixo no arquivo ~/.config/hypr/hyprland.conf

```Bash

source = ~/.config/hypr/monitors.conf
source = ~/.config/hypr/input.conf
source = ~/.config/hypr/bindings.conf
source = ~/.config/hypr/envs.conf
source = ~/.config/hypr/looknfeel.conf
source = ~/.config/hypr/autostart.conf
```
