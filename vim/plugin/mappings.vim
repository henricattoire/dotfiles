""""""""""""""""""""""""""""""""""""
"  mappings
""""""""""""""""""""""""""""""""""""

" Normal Mode {{{
  " better split navigation
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-k> <c-w>k
nnoremap <c-j> <c-w>j
  " repeat last macro
nnoremap <enter> @@
  " ret without delay
if mapleader == ','
  nnoremap <space> ,
endif
  " navigate list
nnoremap <silent> <up> :call mappings#Navigate("previous")<cr>
nnoremap <silent> <down> :call mappings#Navigate("next")<cr>
nnoremap <silent> <left> :call mappings#Navigate("close")<cr>
" }}}
" Visual Mode {{{
  " better split navigation
xnoremap <c-h> <c-w>h
xnoremap <c-l> <c-w>l
xnoremap <c-k> <c-w>k
xnoremap <c-j> <c-w>j
" }}}
" Leader Mode {{{
  " open last buffer
nnoremap <leader><leader> <c-^>
  " zap trailing whitespaces in the current buffer
nnoremap <silent> <leader>zz :call mappings#Zap()<cr>
  " toggle match paren highlighting
nnoremap <silent> <leader>m :exe
      \ exists('g:loaded_matchparen') ? 'NoMatchParen' : 'DoMatchParen'<cr>
  " toggle line numbers
nnoremap <silent> <leader>q :set number!<cr>
  " find and edit files
nnoremap <leader>e :edit **/*<C-z><S-Tab>
nnoremap <leader>f :find *<C-z><S-Tab>
nnoremap <leader>b :buffer *<C-z><S-Tab>
  " peculiar plugin
if &rtp =~? 'peculiar'
  nmap <leader>v <Plug>PeculiarV
  nmap <leader>g <Plug>PeculiarG
  nmap <leader>n <Plug>PeculiarN
  nmap <leader>r <Plug>PeculiarR
endif
" }}}
