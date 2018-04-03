"set fu
"colorscheme seoul256
colorscheme flattr
set guifont=Inconsolata:h15
set transparency=5
set formatoptions=1 
set noexpandtab 
set wrap 
set linebreak 
set linespace=2
set noshowmode
"set spell spelllang=fr_FR

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
