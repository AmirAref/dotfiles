# Dotfiles
My personal config files (dotfiles) on my linux machines


```bash
# Install git
#sudo apt install git
sudo pacman -S git

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
