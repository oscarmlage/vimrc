" Show next matched string at the center of screen
nnoremap n nzz
nnoremap N Nzz

" Yank whole line without newlines
nnoremap Y _y$

" New windows
nnoremap <Leader>v <C-w>v<C-w><Right>
nnoremap <Leader>h <C-w>s<C-w><Down>

" Show hidden chars
nmap <Leader>eh :set list!<CR>:highlight ExtraWhitespace ctermbg=red guibg=red<CR>:match ExtraWhitespace /\s\+$/<CR>
set listchars=tab:→\ ,trail:·,extends:↷,precedes:↶
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Delete trailing whitespaces
nmap <silent><Leader>et :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Folding
let g:php_folding=1
set foldmethod=indent
set foldlevelstart=20
noremap \ za
vnoremap \ za
nnoremap <Space> za
vnoremap <Space> za

" Movement visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Autoload if .vimrc changes
autocmd! BufWritePost vimrc source %

nmap <silent> <Leader>w :update<CR> " quick saving
map <Leader>es g<C-G> " text statistics

" Oscar Settings

nnoremap <Leader>r :source $MYVIMRC<CR>  " reload vim
" nnoremap <Tab><Esc>[C <C-W>R  " Rotate windows (in same row or col) ctrl+w r
" nnoremap <Tab><Esc>[D <C-W>r  " Rotate windows (in same row or col) ctrl+w r

" Change the move behavior between long lines
nnoremap <Up> gk
nnoremap <Down> gj
inoremap <Up>   <C-O>gk
inoremap <Down> <C-O>gj

" Map commands for saving/quitting
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q

" map Mac OS X Terminal.app default Home and End
" map  <C-A> <Home>
" imap <C-A> <Home>
" vmap <C-A> <Home>
" map  <C-E> <End>
" imap <C-E> <End>
" vmap <C-E> <End>

" map <ESC>[H <Home>
" map <ESC>[F <End>
" imap <ESC>[H <C-O><Home>
" imap <ESC>[F <C-O><End>
" cmap <ESC>[H <Home>
" cmap <ESC>[F <End>
" map Mac OS X Terminal.app default Home and End

" ctrl + arrows normal mode
noremap <Esc>f :bnext<CR>
noremap <Esc>b :bprevious<CR>
noremap <C-Right> :bnext<CR>
noremap <C-Left> :bprevious<CR>

" ctrl + arrows visual mode
inoremap <Esc>f <C-Right>
inoremap <Esc>b <C-Left>

" alt + arrows normal mode
noremap <Esc>B b
noremap <Esc>F w

" alt - arrows visual mode
inoremap <Esc>F <C-Right>
inoremap <Esc>B <C-Left>

" ctrl+w h horizontal split
noremap <C-w>h :split<CR>

" Out of tmux + Out of iTerm (iPad / Terminal)
:map <Esc>[1;5D <C-Left>
:map <Esc>[1;5C <C-Right>

:map <Esc>[1;6B <C-W><C-J>
:map <Esc>[1;6A <C-W><C-K>
:map <Esc>[1;6C <C-W><C-L>
:map <Esc>[1;6D <C-W><C-H>
:map <Esc>[B <C-W><C-J>
:map <Esc>[A <C-W><C-K>
:map <Esc>[C <C-W><C-L>
:map <Esc>[D <C-W><C-H>

nnoremap <Leader><space> :noh<CR>                " Toggle search highlight
"nnoremap <CR>   :nohlsearch<cr>
nnoremap <Leader>d <C-w>c                        " Delete current buffer
map <Leader>k :BD!<CR>                           " Kill current window
nnoremap <Leader>q :qa!<CR>                      " Quit without save
nnoremap <F10> :qa!<CR>                          " Quit without save
nnoremap <C-t>     :tabnew<CR>                   " Open empty tab
nnoremap <C-n>     :enew<CR>                     " Open empty buffer
nnoremap <Leader><Leader> <c-^>                  " Quick go to last file
nnoremap <F7> :set wrap!<CR>

" Search and replace
nnoremap <Leader>s :%s///gc<Left><Left><Left><Left>

nnoremap <Leader>t2 :set shiftwidth=2<CR>
nnoremap <Leader>t4 :set shiftwidth=4<CR>

" Iterm sends A/B in shift+up and shift+down, code below remove the maps and
" adds some other maps to they behave as the arrow movements
" nmap A <Nop>
" nmap B <Nop>
" nmap A <Up>
" nmap B <Down>
