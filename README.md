# Dotfiles
My personal config files (dotfiles) on my linux machines


```bash
# Install apps
sudo pacman -S git tmux vim neovim fish kitty xclip xsel stow

# Clone the repo
git clone https://github.com/AmirAref/dotfiles.git $HOME/.dotfiles

# create symlinks using stow
stow . # all of the dotfiles
stow nvim # specific package for example : nvim
```

## install plugins and repositoris (submodules):
1. tpm (tmux-plugin-manager) :
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
  

<!--

2. Vundle :
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

-->

2. moc-themes :  
```bash
git clone https://github.com/tmux-plugins/tpm ~/.moc/themes
```
  

3. omf (oh-my-fish):
```bash
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
fish install --path=~/.local/share/omf --config=~/.config/omf
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


