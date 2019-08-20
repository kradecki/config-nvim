" =================================================================================================
" VIM-PLUG PLUGIN MANAGEMENT (see: https://github.com/junegunn/vim-plug)
" =================================================================================================

call plug#begin('~/.config/nvim/plugged')
     Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
     Plug 'scrooloose/nerdcommenter'
     Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
     Plug 'deoplete-plugins/deoplete-jedi'
     Plug 'jiangmiao/auto-pairs'
     Plug 'vim-airline/vim-airline'
     Plug 'vim-airline/vim-airline-themes'
     Plug 'mhinz/vim-signify'
     Plug 'sheerun/vim-polyglot'
     Plug 'ryanoasis/vim-devicons'
call plug#end()

" =================================================================================================
" GENERAL SETTINGS
" =================================================================================================

" display settings
set encoding=UTF-8                        " encoding used for displaying file
set showmatch                             " highlight matching braces
set number                                " show line numbers
set signcolumn=yes                        " show sign column permanently
set termguicolors                         " enable truecolors
set background=dark                       " dark background for console
set list listchars=tab:\›\ ,trail:-,extends:>,precedes:<,space:·
syntax enable                             " enable syntax highlighting
colorscheme atom-dark-256                 " set color scheme, must be installed first

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
set mouse=a                               " use mouse for window navigation

" search settings
set hlsearch                              " highlight search results
set incsearch                             " do incremental search
set ignorecase                            " do case insensitive search...
set smartcase                             " ...unless capital letters are used

" Python provider
if has("nvim")
    let g:python_host_prog = $HOME . "/.pyenv/versions/neovim2/bin/python"
    let g:python3_host_prog = $HOME . "/.pyenv/versions/neovim3/bin/python"
endif


" =================================================================================================
" PLUGIN CONFIGURATION
" =================================================================================================

""" Deoplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

""" Nerdtree
autocmd VimEnter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeMouseMode = 3


nnoremap <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <C-m> :NERDTreeFind<CR>

""" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_warning = ''
let g:airline_theme = 'papercolor'
let g:airline#extensions#tabline#enabled = 1


" =================================================================================================
" CUSTOM COMMANDS AND KEYMAPPINGS
" =================================================================================================
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
