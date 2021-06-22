"""""""""""""""""""""""""""""""""""""
" completion
"""""""""""""""""""""""""""""""""""""

" map enter to select item from pum
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
" special map for snippets (not tab), because most become muscle memory anyway
inoremap <c-x><c-j> <c-r>=aergia#completion#AergiaComplete()<cr>
" expand snippets upon completion
let g:aergia_expand = 1
" μcomplete settings
let g:mucomplete#chains = {
      \ 'default' : [ 'c-p', 'omni', 'path'],
      \ }
