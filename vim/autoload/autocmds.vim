"""""""""""""""""""""""""""""""""""""
" autocmd functions
"""""""""""""""""""""""""""""""""""""

" Search {{{
noremap  <expr> <Plug>(StopHL) execute('nohlsearch')
noremap! <expr> <Plug>(StopHL) execute('nohlsearch')
  " HLsearch {{{
function! autocmds#HLsearch()
  let l:start_match = match(getline('.'), @/, col('.') - 1) + 1
  if l:start_match != col('.') - 1
    call autocmds#StopHL()
  endif

  if v:hlsearch
    echo (v:searchforward ? '/' : '?') . @/ .  ' on line ' . line('.') . ', column ' . l:start_match
  endif
endfunction
  " }}}
  " StopHL {{{
function! autocmds#StopHL()
  if v:hlsearch && mode() is 'n'
    call feedkeys("\<Plug>(StopHL)")
  endif
endfunction
  " }}}
" }}}
" Lint {{{
function! autocmds#Lint(filetype)
  if has_key(g:, "lint") && index(g:lint, a:filetype) > -1 && !empty(&makeprg)
    silent make! <afile> | silent redraw! | silent! cc
  endif
endfunction
" }}}
