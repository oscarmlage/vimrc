if v:version >= 800

    let g:NERDTreeChDirMode=2
    let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__', '.git', 'node_modules']
    let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
    let g:NERDTreeShowBookmarks=1
    let g:nerdtree_tabs_focus_on_files=1
    let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
    let g:NERDTreeWinSize = 30
    let NERDTreeMinimalUI = 1         " Hides Press ? for help
    let g:NERDTreeShowHidden = 1      " Shows invisibles
    let NERDTreeQuitOnOpen = 1        " Quit NERDTree once file is open
    let NERDTreeAutoDeleteBuffer = 1  " Automatically delete the buffer of del file

    " keep alternate files and jumps
    let g:NERDTreeCreatePrefix='silent keepalt keepjumps'

    " Open it automatically when starts vim without arguments
    "autocmd StdinReadPre * let s:std_in=1
    "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " reveal in Finder (shift-r)
    nnoremap <silent> <S-r> :NERDTreeFind<CR>
    noremap <Tab> :NERDTreeToggle<CR>:DimInactive<CR>

    " h for open in horizontal-split, v for open in vertical-split
    let g:NERDTreeCustomReuseWindows = '1'
    autocmd VimEnter * call NERDTreeAddKeyMap({
           \ 'key': 'h',
           \ 'scope': 'FileNode',
           \ 'callback': 'NERDTreeCustomOpenSplit',
           \ 'quickhelpText': 'open split reusing if able' })

    function! NERDTreeCustomOpenSplit(node)
        call a:node.open({'where': 'h', 'reuse': g:NERDTreeCustomReuseWindows})
    endfunction

    autocmd VimEnter * call NERDTreeAddKeyMap({
           \ 'key': 'v',
           \ 'scope': 'FileNode',
           \ 'callback': 'NERDTreeCustomOpenVSplit',
           \ 'quickhelpText': 'open vsplit reusing if able' })

    function! NERDTreeCustomOpenVSplit(node)
        call a:node.open({'where': 'v', 'reuse': g:NERDTreeCustomReuseWindows})
    endfunction

endif

