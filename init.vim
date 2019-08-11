" =================================================================================================
" PLUGIN MANAGEMENT
" =================================================================================================

" see: https://github.com/junegunn/vim-plug
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" use <leader> c <space> to toggle the comments
Plug 'scrooloose/nerdcommenter'
" show filetype icons in nerdtree windows
" follow the instructions: https://github.com/ryanoasis/nerd-fonts#font-installation
"     brew tap homebrew/cask-fonts
"     brew cask install font-firacode-nerd-font
" attention: this plugin should be installed as the final one
Plug 'ryanoasis/vim-devicons'
call plug#end()

" =================================================================================================
" GENERAL SETTINGS
" =================================================================================================
" use Vim mode instead of pure Vi, it must be the first instruction
set nocompatible

" display settings
set encoding=UTF-8                        " encoding used for displaying file
set ruler                                 " show the cursor position all the time
set showmatch                             " highlight matching braces
set showmode                              " show insert/replace/visual mode
set number                                " show line numbers
set title                                 " window title
set termguicolors                         " enable truecolors

" Statusline settings
set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

" write settings
set confirm                               " confirm :q in case of unsaved changes
set fileencoding=utf-8                    " encoding used when saving file
set nobackup                              " do not keep the backup~ file

" edit settings
set backspace=indent,eol,start            " backspacing over everything in insert mode
set expandtab                             " fill tabs with spaces
set nojoinspaces                          " no extra space after '.' when joining lines
set shiftwidth=8                          " set indentation depth to 8 columns
set softtabstop=4                         " backspacing over 8 spaces like over tabs
set tabstop=4                             " set tabulator length to 8 columns
set autoindent                            " enable auto-indentation
set smartindent                           " enable smart-indentation
"set textwidth=120                         " wrap lines automatically at 80th column

" search settings
set hlsearch                              " highlight search results
set ignorecase                            " do case insensitive search...
set incsearch                             " do incremental search
set smartcase                             " ...unless capital letters are used

" syntax highlighting
colorscheme atom-dark-256                 " set color scheme, must be installed first
set background=dark                       " dark background for console
syntax enable                             " enable syntax highlighting

" keymaps
let mapleader=","
nmap <silent> <leader><leader> :noh<CR>   " disable search highlight using comma-comma
nmap <Tab> :bnext<CR>                     " next buffer (tab)
nmap <S-Tab> :bprevious<CR>               " previous buffer (tab)

" =================================================================================================
" NERDTREE CONFIG
" =================================================================================================
" autoopen on startup
autocmd VimEnter * NERDTree | wincmd p
" keys maps
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
