"""""""""""""""""""""""""""""""""""
" command functions
"""""""""""""""""""""""""""""""""""

" Grep {{{
function! commands#Grep(...)
  " return system(join([&grepprg] + [expandcmd(join(['"' . a:1 . '"'] + a:000[1:-1], ' '))], ' '))
  return system(join([&grepprg] + [join(['"' . a:1 . '"'] + a:000[1:-1], ' ')], ' '))
endfunction
" }}}
