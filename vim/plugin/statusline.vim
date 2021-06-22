"""""""""""""""""""""""""""""""""""""
" statusline
"""""""""""""""""""""""""""""""""""""

function! StatuslineGit()
  " only call external command once, prevents vim from acting weird
  if !exists('s:branch')
    let s:branch = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  endif
  return strlen(s:branch) > 0 ? s:branch . ' | ' : ''
endfunction

set laststatus=2

set statusline=
set statusline+=%{StatuslineGit()}
set statusline+=%.20f
set statusline+=\ \|
set statusline+=\ %M
set statusline+=%=
set statusline+=\ \ %{tolower(&filetype)}
set statusline+=\ \ %p%%
set statusline+=\ \ %l,%c
