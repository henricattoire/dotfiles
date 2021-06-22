"""""""""""""""""""""""""""""""""""
" autocmds
"""""""""""""""""""""""""""""""""""

" buffer related autocommands
augroup buffer
  autocmd!
  " shebang detection
  autocmd BufWritePost * if empty(&filetype) | filetype detect | endif
  " automatic linter
  autocmd BufWritePost * call autocmds#Lint(&ft)
  " terminal title
  autocmd BufEnter * let &titlestring = "vim - " . expand("%:t") . " %m%r"
augroup end
" mode related autocommands
augroup modes
  autocmd!
  " set and unset cursorline
  autocmd InsertEnter * set nocursorline
  autocmd InsertLeave * set cursorline
augroup end
" improved search behaviour
augroup search
  autocmd!
  autocmd InsertEnter * call autocmds#StopHL()
  autocmd CursorMoved * call autocmds#HLsearch()
augroup end
" list related autocommands
augroup lists
  autocmd!
  autocmd QuickFixCmdPost [^l]* cwindow
  autocmd QuickFixCmdPost    l* lwindow
  autocmd QuitPre * if &filetype != 'qf' | silent! lclose | silent! cclose | endif
augroup end
