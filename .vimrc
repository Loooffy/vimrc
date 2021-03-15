syntax on
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_winsize = 20
set shiftwidth=4
set tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
set expandtab
set clipboard=unnamed
set autoindent
set smartindent
set nocompatible
set nu
set laststatus=2
set relativenumber
set t_Co=256
let NERDTreeShowLineNumbers=1
map <C-X> :NERDTreeToggle<CR>
map <C-\> :cnext<CR>
map <C-]> :cprevious<CR>
map <C-=> :copen<CR>
