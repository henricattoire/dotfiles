"""""""""""""""""""""""""""""""""""
" commands
"""""""""""""""""""""""""""""""""""

" grep on steroids
command! -nargs=+ -complete=file_in_path -bar Grep lgetexpr commands#Grep(<f-args>) | ll
