"""""""""""""""""""""""""""""""""""""
" mapping functions
"""""""""""""""""""""""""""""""""""""

" Zap {{{
function! mappings#Zap()
  let l:ln = 1
  for l:line in getline(1, '$')
    " doesn't clutter search history
    call setline(l:ln, substitute(l:line, '\s\+$', '', ''))
    let l:ln += 1
  endfor
endfunction
" }}}
" Navigate {{{
function! mappings#Navigate(command)
  let l:loclist = s:Visible('v:val.loclist')
  if s:Visible('v:val.quickfix && !v:val.loclist') && l:loclist
    echohl Error | echo "E(Mappings): Use designated commands to navigate lists." | echohl None
    return
  endif
  execute "silent! " . (l:loclist ? "l" : "c") . a:command
endfunction
  " Visible {{{
function! s:Visible(req)
  return !empty(filter(getwininfo(), a:req))
endfunction
  " }}}
" }}}
