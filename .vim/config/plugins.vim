" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin('~/.vim/bundle')

" Must
Plug 'tpope/vim-commentary'               " toggle comments
Plug 'vim-airline/vim-airline'            " status line
Plug 'vim-airline/vim-airline-themes'     " status line
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'AndrewRadev/linediff.vim'
Plug 'xolox/vim-misc'
Plug 'mileszs/ack.vim'             " search, grep replacement
Plug 'qpkorr/vim-bufkill'          " Delete buffer but not window (BD!)
if has("python3")
    Plug 'SirVer/ultisnips'            " Snippets engine
endif
Plug 'alvan/vim-closetag'          " Auto close HTML tags
Plug 'christoomey/vim-tmux-navigator'     " Do vim + tmux movements the same
Plug 'blueyed/vim-diminactive'     " Inactive windows bg color
Plug 'tpope/vim-sensible'          " Tpope sensible stuff
Plug 'wincent/terminus'            " Cursor shape diff modes, paste working, full mouse support
Plug 'dhruvasagar/vim-zoom'
if v:version >= 800
    Plug 'dense-analysis/ale'      " Linting
endif
Plug 'MattesGroeger/vim-bookmarks' " Bookmarks as Sublime does
Plug 'machakann/vim-highlightedyank'  " Highlight the yanked text

" FZF or CtrlP
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
if filereadable(expand("~/.fzf/bin/fzf"))
    Plug 'junegunn/fzf.vim'
else
    Plug 'ctrlpvim/ctrlp.vim'
endif

" ColorSchemes
Plug 'gruvbox-community/gruvbox'

" Git
Plug 'airblade/vim-gitgutter'     " Mark git differences in sidebar
Plug 'tpope/vim-fugitive'         " Dealing with vim, in general
Plug 'idanarye/vim-merginal'      " Dealing with branches
Plug 'junegunn/gv.vim'            " Git Log

" Languages / Syntax
Plug 'lepture/vim-jinja'              " jinja2

call plug#end()

