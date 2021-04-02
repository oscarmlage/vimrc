scriptencoding utf-8
set encoding=utf-8              " setup the encoding to UTF-8
set ls=2                        " status line always visible
set go-=T                       " hide the toolbar
set go-=m                       " hide the menu
set number
set numberwidth=1
set list! " Show hidden chars by default
set clipboard=unnamed " Share paste with system clipboard
" The next two lines are quite tricky, but in Gvim, if you don't do this, if you
" only hide all the scrollbars, the vertical scrollbar is showed anyway
set go+=rRlLbh                  " show all the scrollbars
set go-=rRlLbh                  " hide all the scrollbars
set visualbell                  " turn on the visual bell
set cursorline                  " highlight the line under the cursor
set fillchars+=vert:│           " better looking for windows separator
set ttyfast                     " better screen redraw
set title                       " set the terminal title to the current file
set showcmd                     " shows partial commands
set hidden                      " hide the inactive buffers
set ruler                       " sets a permanent rule
set lazyredraw                  " only redraws if it is needed
set autoread                    " update an open file edited outside of Vim
set ttimeoutlen=0               " toggle between modes almost instantly
set backspace=indent,eol,start  " defines the backspace key behavior
"set virtualedit=all            " to edit where there is no actual character
set virtualedit=onemore
set more                        " to show pages using `more` in command outpouts
set iskeyword+=-                " treat dash separated words as a word text object

" Splits
set splitbelow
set splitright

" Searching
set path=.,**                     " Search down into subfolders
set incsearch                   " incremental searching
set laststatus=2                " Always display the stastus line
set guioptions=                 " Remove scrollbars on macvim
set showmatch                   " show pairs match
set hlsearch                    " highlight search results
set smartcase                   " smart case ignore
set ignorecase                  " ignore case letters

" History and undo levels
set history=1000
set undofile
set undoreload=1000

" Backups
set backup
" set noswapfile
set backupdir=$HOME/.vim/tmp/backup/
set undodir=$HOME/.vim/tmp/undo/
set directory=$HOME/.vim/tmp/swap/
set viminfo+=n$HOME/.vim/tmp/viminfo

" Crear estos directorios si no existen previamente
if !isdirectory(expand("~/.vim/tmp/backup"))
    call mkdir(expand("~/.vim/tmp/backup"), "p")
endif

if !isdirectory(expand("~/.vim/tmp/undo"))
    call mkdir(expand("~/.vim/tmp/undo"), "p")
endif

if !isdirectory(expand("~/.vim/tmp/swap"))
    call mkdir(expand("~/.vim/tmp/swap"), "p")
endif

if !isdirectory(expand("~/.vim/sessions"))
    call mkdir(expand("~/.vim/sessions"), "p")
endif

" wildmenu
set wildmenu                                     " Command line autocompletion
set wildmode=list:longest,list:full              " Shows all the options
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~      " Backup files
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.jar                            " java archives
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.stats                          " Pylint stats
set wildignore+=**/node_modules/**               " Node modules dir

" Tabs, spaces and wrapping
set expandtab                  " spaces instead of tabs
set tabstop=4                  " a tab = four spaces
set shiftwidth=4               " number of spaces for auto-indent
set softtabstop=4              " a soft-tab of four spaces
set autoindent                 " set on the auto-indent

set textwidth=80
set colorcolumn=81

" Mouse: allows mouse selection to go into visual mode and more
set mouse=a

" Speed up things, in general, performance related
" https://www.reddit.com/r/vim/comments/8m0632/what_performance_related_things_do_you_have_in/
set regexpengine=1             " helpful while enabling syntax and speed
                               " it's really slow without this regexpengine
set lazyredraw
" set synmaxcol=128
" syntax sync minlines=256

" Resize the divisions if the Vim window size changes
au VimResized * exe "normal! \<c-w>="
