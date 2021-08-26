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
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

highlight ALEError ctermbg=None ctermfg=Red
highlight ALEErrorSign ctermbg=Darkgrey ctermfg=Red
highlight ALEWarning ctermbg=None ctermfg=None
highlight ALEWarningSign ctermbg=Darkgrey ctermfg=Yellow
let g:ale_sign_error = '✘' 
let g:ale_sign_warning = '◉' 
let g:ale_linters = {'javascript': ['eslint']}

let NERDTreeShowLineNumbers=1
map <C-X> :NERDTreeToggle<CR>
map <C-\> :cnext<CR>
map <C-]> :cprevious<CR>
map <C-=> :copen<CR>
map <C-N> :call Nu()<CR>

function Nu()
  set nu! 
  set rnu!
endfunction

function Patch()
  bufdo !tar -rvf patch.tar %
  !mv patch.tar ~/remoteFile
endfunction

function Json()
  %s/^\(\s*\)\(\w\)/\1'\2/g
  %s/'\(\w*\):/'\1':/g
  %s/},//g
  %s/'/"/g
endfunction
