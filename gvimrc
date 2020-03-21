colorscheme flattr
set guifont=Operator\ Mono\ Light:h14
set transparency=5
set formatoptions=1 
set noexpandtab 
set wrap 
set linebreak 
set linespace=2
set noshowmode
set viminfo='20
"set spell spelllang=fr_FR

highlight Directory term=bold ctermfg=81 gui=bold guifg=#61D1FD

set guioptions=aAce
set showtabline=1
set wrapmargin=0

set filetype=markdown

autocmd VimEnter * set filetype=markdown
autocmd BufEnter * if &filetype == "" | setlocal ft=markdown | endif
autocmd VimEnter * Limelight
autocmd VimEnter * Goyo

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

let mapleader="\<Space>"
nmap <Leader>o :browse oldfiles<CR>
nmap <Leader>f :set fu<CR>
