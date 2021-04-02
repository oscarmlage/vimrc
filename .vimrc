
"  ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄
" ███    ███ ███  ▄██▀▀▀███▀▀▀██▄
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███▌ ███   ███   ███
" ███    ███ ███  ███   ███   ███
" ███    ███ ███  ███   ███   ███
"  ▀██████▀  █▀    ▀█   ███   █▀

"---------------------------------------------------------
"-------------  Vim conf
"---------------------------------------------------------

" Requirements:
"
"  ack (ack.vim)
"  $ brew install ack
"
"  fzf (fzf.vim) (ctrlp is installed as a fallback)
"  it should install fzf by itself, but if it doesn't work:
"  $ brew install fzf
"
"  python (linting with flake8 + pyls)
"  $ pip install flake8
"  $ pip install python-language-server

" Fonts:
" Inconsolata for Powerline (16)
" Menlo Regular (14)
" Hack Normal (13)

set nocompatible

let mapleader=","

source $HOME/.vim/config/plugins.vim
source $HOME/.vim/config/general.vim
source $HOME/.vim/config/custom.vim
source $HOME/.vim/config/filetypes.vim

" General
filetype off
filetype plugin indent on
syntax enable

" Theme (has to be setted here for vim < 700)
set background=dark
colorscheme gruvbox

" Overrides the colorscheme background
" (it doesn't work if it's not setted here)
if has('nvim')
    highlight Normal guibg=none
else
    highlight Normal ctermbg=none
endif
