let g:tmux_navigator_no_mappings = 1

" This has to be twice (C-S and c-) because otherwise it doesn't work with
" the tmux configuration.
nnoremap <silent> <C-S><Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-S><Down> :TmuxNavigateDown<cr>
nnoremap <silent> <C-S><Up> :TmuxNavigateUp<cr>
nnoremap <silent> <C-S><Right> :TmuxNavigateRight<cr>

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>


