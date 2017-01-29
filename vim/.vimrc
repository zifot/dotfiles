syntax enable
colorscheme monokai

set hidden

set relativenumber
set incsearch

set expandtab
set autoindent
set softtabstop=4
set shiftwidth=4

let mapleader=","

set path+=**
set wildmenu


" Highlight trailing white characters.
match Todo /\s\+$/

" White characters trimming
function TrimEndLines()
    let pos = getpos('.')
    :silent! %s#\($\n\s*\)\+\%$##
    call setpos('.', pos)
endfunction

function TrimTrailingWhiteSpace()
    let pos = getpos(".")
    %s/\s\+$//e
    call setpos(".", pos)
endfunction

au BufWritePre * call TrimEndLines()
au BufWritePre * call TrimTrailingWhiteSpace()

" Leader mappings
nnoremap <Leader>z :b#<CR>
