# Configuration file for Neovim

This repository should be cloned in the .config directory structure.

```bash
mkdir -p ~/.config/nvim
cd ~/.config/nvim
git clone git@github.com:kradecki/config-nvim.git .
mkdir plugged
```
First time you start vim simply execute `:PlugInstall` in order to install all plugins.
Periodically run `:PlugUpdate` to update all plugins and `:PlugUpgrade` to update vim-plug itself

## Used plugins
| Plugin name                    | Description                                     |
|--------------------------------|-------------------------------------------------|
| scrooloose/nerdtree            | Navigation pane / project directory             |
| scrooloose/nerdcommenter       | advanced commenting features                    |
| Shougo/deoplete.nvim           | autocomplete plugin                             |
| deoplete-plugins/deoplete-jedi | deoplete Python plugin                          |
| jiangmiao/auto-pairs'          | automatically add closing brackets, quotes etc. |
| vim-airline/vim-airline        | status bar and buffer list tab                  |
| vim-airline/vim-airline-themes | themes for airline plugin                       |
| mhinz/vim-signify              | add git status symbol next to each line         |
| sheerun/vim-polyglot           | syntax and formatting for various languages     |
| ryanoasis/vim-devicons         | filetype icons for nerdtree and airline         |

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
Prepare the OS for running plugins that require Python, incl:
* deoplete.vim

Python 2:
```bash
# Install latest python 2
pyenv install 2.7.16
pyenv virtualenv 2.7.16 neovim2
pyenv activate neovim2
pip install --upgrade pip
pip install neovim
pip install jedi
pyenv deactivate
```

Python 3:
```bash
# Install latest python 3
pyenv install 3.7.4
pyenv virtualenv 3.7.4 neovim3
pyenv activate neovim3
pip install --upgrade pip
pip install neovim
pip install jedi
pyenv deactivate
```
