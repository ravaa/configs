augroup filetypedetect
  " Mail
  autocmd BufRead,BufNewFile /tmp/mutt*              setfiletype mail
  autocmd BufRead,BufNewFile /tmp/mutt*              setlocal spell tw=72 colorcolumn=73
  " Git commit message
  autocmd Filetype gitcommit                         setlocal spell tw=72 colorcolumn=73
  " Go shortcuts
  au FileType go nmap <leader>t <Plug>(go-test)
  au FileType go nmap <Leader>r <Plug>(go-rename)
  au FileType go nmap <leader>c <Plug>(go-coverage)
  " Rust language server
  "au FileType rust :LanguageClientStart
  " Shorter columns in text
  autocmd Filetype tex setlocal spell tw=72 colorcolumn=73
  autocmd Filetype text setlocal spell tw=72 colorcolumn=73
  autocmd Filetype markdown setlocal spell tw=72 colorcolumn=73
  " No autocomplete in text
  autocmd BufRead,BufNewFile /tmp/mutt* let g:deoplete#enable_at_startup = 0
  autocmd Filetype tex let g:deoplete#enable_at_startup = 0
  autocmd Filetype text let g:deoplete#enable_at_startup = 0
  autocmd Filetype markdown let g:deoplete#enable_at_startup = 0
augroup END
