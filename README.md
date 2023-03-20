# Dotfiles
My personal config files (dotfiles) on my linux machines


```bash
# Install apps
sudo pacman -S git tmux vim neovim fish kitty xclip xsel

# Clone the repo
git clone --bare https://github.com/AmirAref/dotfiles.git $HOME/.dotfiles

# Create an alias
alias cfg="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

# Check out the repo
cfg checkout

# Don't show untracked files
cfg config --local status.showUntrackedFiles no

# Set up pre-commit
GIT_DIR=$HOME/.dotfiles GIT_WORK_TREE=$HOME pre-commit install

# install tpm (tmux plugin manager)
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

## install plugins and repositoris (submodules):
1. tpm (tmux-plugin-manager) :
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
  

2. Vim-Plug :
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
  

3. moc-themes :  
```bash
git clone https://github.com/tmux-plugins/tpm ~/.moc/themes
```
  

4. omf (oh-my-fish):
```bash
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install > install
fish install --path=~/.local/share/omf --config=~/.config/omf
```

## setup tmux plugins :  
open the tmux after installition `tmux` then run commmand `Crtl-B`+`I` to install plugins.  


## setup vim plugins :  
run commmand `vim -c "PlugInstall"` to install plugins.  


