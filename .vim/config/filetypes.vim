
"---------------------------------------------------------
"-------------- Filetypes

"---------------------------------------------------------
"-------------  autoread files in events (focus, buffer...)
"---------------------------------------------------------
au FocusGained,BufEnter * :checktime
au CursorHold * checktime

"---------------------------------------------------------
"-------------  html
"---------------------------------------------------------

au FileType phtml setlocal foldmethod=indent
au FileType phtml setlocal foldlevelstart=20

"---------------------------------------------------------
"-------------  pyramid (templates)
"---------------------------------------------------------
autocmd BufRead,BufNewFile *.html set textwidth=0 | set wrapmargin=0

"---------------------------------------------------------
"-------------  blade (laravel templates)
"---------------------------------------------------------
autocmd BufNewFile,BufRead *.blade.php set ft=html | set ft=phtml | set ft=blade | set syntax=html
autocmd BufRead,BufNewFile *.blade.php set filetype=html
autocmd BufRead,BufNewFile *.blade.php set textwidth=0 | set wrapmargin=0

"---------------------------------------------------------
"-------------  pyramid (templates)
"---------------------------------------------------------
autocmd BufNewFile,BufRead *.pt set ft=html | set ft=phtml | set syntax=html
autocmd BufRead,BufNewFile *.pt set textwidth=0 | set wrapmargin=0

"---------------------------------------------------------
"-------------  jinja2 templates
"---------------------------------------------------------
autocmd BufNewFile,BufRead *.jinja2,*.j2 set ft=jinja
autocmd BufRead,BufNewFile *.jinja2,*.j2 set textwidth=0 | set wrapmargin=0

"---------------------------------------------------------
"-------------  django-html (templates)
"---------------------------------------------------------
autocmd BufRead,BufNewFile */templates/*.html setlocal filetype=htmldjango.html
autocmd BufRead,BufNewFile */templates/*.html set textwidth=0 | set wrapmargin=0

"---------------------------------------------------------
"-------------  json
"---------------------------------------------------------

augroup json_autocmd
  autocmd FileType json set foldmethod=indent
  autocmd FileType json set foldlevelstart=20
augroup END

"---------------------------------------------------------
"-------------  python
"---------------------------------------------------------

au FileType python setlocal foldmethod=indent
au FileType python setlocal foldlevelstart=20

"---------------------------------------------------------
"-------------  php
"---------------------------------------------------------

au FileType php setlocal foldmethod=indent
au FileType php setlocal foldlevelstart=20

"---------------------------------------------------------
"-------------  markdown
"---------------------------------------------------------

" markdown filetype file
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} setlocal textwidth=0
"au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} setlocal columns=100
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} setlocal linebreak

"---------------------------------------------------------
"-------------  patch
"---------------------------------------------------------

" patch filetype file
au BufRead,BufNewFile *.{patch,dpatch,diff} set filetype=diff

"---------------------------------------------------------
"-------------  ruby
"---------------------------------------------------------
au FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2


"---------------------------------------------------------
"-------------  Vue
"---------------------------------------------------------
au BufNewFile,BufRead *.vue setf vue

"---------------------------------------------------------
"-------------  Javascript
"---------------------------------------------------------
au FileType javascript :UltiSnipsAddFiletypes javascript


"-------------- End of Filetypes
""---------------------------------------------------------
