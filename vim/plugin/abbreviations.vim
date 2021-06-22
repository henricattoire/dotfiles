"""""""""""""""""""""""""""""""""""
" abbreviations
"""""""""""""""""""""""""""""""""""

" Command Mode {{{
cnoreabbrev <expr> grep (getcmdtype() ==# ':' && getcmdline() ==# 'grep') ? 'Grep' : 'grep'
" }}}
