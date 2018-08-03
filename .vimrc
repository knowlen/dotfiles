filetype indent on
filetype plugin on
set incsearch
set hlsearch
set magic
set showmatch
set background=dark
set nobackup
set nowb
set nowrap
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set si "Smart indent
map <leader>ss :setlocal spell!<cr>
inoremap <Nul> <C-n>
colorscheme ron
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 



" Override w motion
function! MyWMotion()
    " Save the initial position
    let initialLine=line('.')
    " Execute the builtin word motion and get the new position
    normal! 5w
    let newLine=line('.')

    " If the line as changed go back to the previous line
    if initialLine != newLine
        normal k$
    endif
endfunction

" Override b motion
function! MyBMotion()
    " Save the initial position
    let initialLine=line('.')

    " Execute the builtin word motion and get the new position
    normal! 5b
    let newLine=line('.')

    " If the line as changed go back to the previous line
    if initialLine != newLine
        normal j^
    endif
endfunction


nnoremap c <c-v>
nnoremap W 7k 
nnoremap S 7j 
nnoremap A :call MyBMotion()<CR> 
nnoremap D :call MyWMotion()<CR>

