# Configuration file for Neovim

This repository should be cloned in the .config directory structure.

```bash
mkdir -p ~/.config/nvim
cd ~/.config/nvim
git clone git@gitlab.com:kradecki/nvim.git .
mkdir plugged
```
First time you start vim simply execute `:PlugInstall` in order to install all plugins.

## Plugin additional details

### vim-devicons
Purspoe show filetype icons in nerdtree windows
follow the instructions: https://github.com/ryanoasis/nerd-fonts#font-installation
On macOS perform:
```bash
brew tap homebrew/cask-fonts
brew cask install font-firacode-nerd-font
```

### Python provider
Prepare the OS for running deoplete.vim

Python 2:
```bash
# Install latest python 2
pyenv install 2.7.16
pyenv virtualenv 2.7.16 neovim2
pyenv activate neovim2
pip install --upgrade pip
pip install neovim
pyenv deactivate
```

Python 3
```bash
# Install latest python 3
pyenv install 3.7.4
pyenv virtualenv 3.7.4 neovim3
pyenv activate neovim3
pip install --upgrade pip
pip install neovim
pyenv deactivate
```
