if v:version >= 800

    " Enable completion where available.
    let g:ale_completion_enabled = 1
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_lint_on_enter = 0
    let g:ale_list_window_size = 5
    let g:ale_sign_warning = ''
    " let g:ale_sign_warning = '⚠'
    let g:ale_sign_error = '●'
    highlight ALEErrorSign ctermbg=NONE ctermfg=red
    highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
    let g:ale_linters = {
      \ 'javascript': ['eslint'] ,
      \ 'javascript.jsx': ['eslint'] ,
      \ 'javascript.tsx': ['eslint'] ,
      \ 'blade': ['php'] ,
      \ 'python': ['flake8', 'pyls'] ,
      \ }
    map <F8> :ALEToggle<CR>
    nmap gd :ALEGoToDefinition<CR>
    nmap gr :ALEFindReferences<CR>
    nmap gh :ALEHover<CR>
endif

