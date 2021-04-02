if !filereadable(expand("~/.fzf/bin/fzf"))
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\.git$\|\.hg$\|\.svn$\|vendors$\|bower_components$\|dist$\|node_modules$\|project_files$\',
        \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
    let g:ctrlp_match_window = 'top,order:ttb,min:1,max:25,results:25'
    " nnoremap <C-p> :CtrlPMRU<CR>
    nnoremap <Leader>p :CtrlPBuffer<cr>
    nnoremap π :CtrlPBuffer<cr>                 "  Alt + p (in osx is the char "π")
    let g:ctrlp_show_hidden = 1
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif

