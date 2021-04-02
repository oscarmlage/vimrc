if filereadable(expand("~/.fzf/bin/fzf"))
    set rtp+=~/.fzf/bin/fzf
    nnoremap <C-p> :FZF<CR>
    nnoremap <C-o> :Buffers<CR>
    if executable('rg')
        command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)"')"
    endif
endif

