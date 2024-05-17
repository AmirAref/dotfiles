# Dotfiles
My personal config files (dotfiles) on my linux machines


```bash
# Install apps
sudo pacman -S git tmux vim neovim kitty xclip xsel stow zsh

# Clone the repo
git clone --recursive https://github.com/AmirAref/dotfiles.git $HOME/.dotfiles
git submodule update 

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

## setup tmux plugins :  
open the tmux after installition `tmux` then run commmand `Crtl-B`+`I` to install plugins.  

<!--
## setup vim plugins :  
run commmand below to install vim's plugins.  
```bash
nvim
```
-->


