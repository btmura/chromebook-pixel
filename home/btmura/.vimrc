set nobackup
set nowritebackup
set noswapfile
set nofsync

au BufRead,BufNewFile *.go set filetype=go

filetype on
autocmd Filetype go setlocal ts=4 sts=4 sw=4 noexpandtab

set sw=2
set ts=2
set sts=2
set expandtab
set autoindent

colorscheme elflord
syntax on

