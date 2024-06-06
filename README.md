# Dotfiles
My personal config files (dotfiles) on my **Arch linux** machines.


## Install Packages
this is a list of initial packages that i use (or need).
```bash
# Install apps
sudo pacman -S --needed git tmux vim neovim kitty xclip xsel stow zsh
```

## get dotfiles
```bash
# Clone the repo
git clone --recursive https://github.com/AmirAref/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
cit submodule update 
```
then with following command you can create link for dotfiles for any module that you want, just write it after `stow ` :

```bash
# create symlinks using stow
stow nvim vim tmux git zsh bash fastfetch # specific package for example : nvim
```

## Hyprland Packages
there is the list of packages are required for [hyprland](https://hyprland.org) window manager in [hyprland-pkglist.txt](./hyprland-pkglist.txt) file, install them using following command.

```bash
sudo pacman -S --needed $(cat hyprland-pkglist.txt | cut -d# -f1)
```


## install plugins and repositoris (submodules):
<!-- 1. tpm (tmux-plugin-manager) : -->
<!-- ```bash -->
<!-- git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm -->
<!-- ``` -->
  


<!-- 1. Vundle : -->
<!-- ```bash -->
<!-- git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim -->
<!-- ``` -->

<!-- 2. moc-themes :   -->
<!-- ```bash -->
<!-- git clone https://github.com/tmux-plugins/tpm ~/.moc/themes -->
<!-- ``` -->
  

1. OMZ and OMB (oh-my-zsh, oh-my-bash):
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
```

2. oh-my-zsh plugins:
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
