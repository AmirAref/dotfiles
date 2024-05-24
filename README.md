# Dotfiles
My personal config files (dotfiles) on my linux machines


## Install Packages
this is a list of initial packages that i use (or need).
```bash
# Install apps
sudo pacman -S git tmux vim neovim kitty xclip xsel stow zsh
```

## Hyprland Packages
this is the list of packages are required in [hyprland](https://hyprland.org) window manager

```bash
wofi # menu launcher
waybar # top tool bar
wireplumber # pipewire sound manager
brightnessctl # change display brightness
mako # on screen notification
dunst # notification manager
swaylock # locker
swaybg # background changer
blueman # bluetooth manager
udiskie # usb storage automount
swappy # screen shot editing tool
grim # screenshot tool
slurp # select a region for screenshot
nwg-bar # (aur) power control
cliphist # clipboard manager
swayidle # idle manager (autp lcok and suspend )
polkit-kde-agent # password request agent
```

## Setup dotfiles
```bash
# Clone the repo
git clone --recursive https://github.com/AmirAref/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
cit submodule update 

# create symlinks using stow
stow nvim vim tmux git zsh bash # specific package for example : nvim
```

## install plugins and repositoris (submodules):
<!-- 1. tpm (tmux-plugin-manager) : -->
<!-- ```bash -->
<!-- git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm -->
<!-- ``` -->
  


1. Vundle :
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

<!-- 2. moc-themes :   -->
<!-- ```bash -->
<!-- git clone https://github.com/tmux-plugins/tpm ~/.moc/themes -->
<!-- ``` -->
  

2. OMZ and OMB (oh-my-zsh, oh-my-bash):
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

3. oh-my-zsh plugins:
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## setup tmux plugins :  
open the tmux after installition `tmux` then run commmand `Crtl-B`+`I` to install plugins.  

<!--
## setup vim plugins :  
run commmand below to install vim's plugins.  
```bash
nvim
```
-->
