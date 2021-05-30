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
map <C-N> :call Nu()<CR>

syntax on
set t_Co=256
colorscheme nova

function Nu()
    set nu!
    set rnu!
endfunction

function Patch()
  bufdo !tar -rvf patch.tar %
endfunction

function Json()
  %s/^\(\s*\)\(\w\)/\1'\2/g
  %s/'\(\w*\):/'\1':/g
endfunction

let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end

noremap "+p :exe 'norm a'.system('/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -Command Get-Clipboard')<CR>
